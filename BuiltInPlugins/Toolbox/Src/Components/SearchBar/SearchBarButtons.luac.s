PROTO_0:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K1 [{"isClearButtonHovered"}]
        2 LOADB                            R3 1
        3 SETTABLEKS                       R3 R2 K0 ["isClearButtonHovered"]
        5 NAMECALL                         R0 R0 K2 ["setState"]
        7 CALL                             R0 2 0
        8 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K1 [{"isClearButtonHovered"}]
        2 LOADB                            R3 0
        3 SETTABLEKS                       R3 R2 K0 ["isClearButtonHovered"]
        5 NAMECALL                         R0 R0 K2 ["setState"]
        7 CALL                             R0 2 0
        8 RETURN                           R0 0

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
        1 DUPTABLE                         R2 K1 [{"isSearchButtonHovered"}]
        2 LOADB                            R3 1
        3 SETTABLEKS                       R3 R2 K0 ["isSearchButtonHovered"]
        5 NAMECALL                         R0 R0 K2 ["setState"]
        7 CALL                             R0 2 0
        8 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K1 [{"isSearchButtonHovered"}]
        2 LOADB                            R3 0
        3 SETTABLEKS                       R3 R2 K0 ["isSearchButtonHovered"]
        5 NAMECALL                         R0 R0 K2 ["setState"]
        7 CALL                             R0 2 0
        8 RETURN                           R0 0

PROTO_5:
        0 DUPTABLE                         R1 K2 [{"isSearchButtonHovered", "isClearButtonHovered"}]
        1 LOADB                            R2 0
        2 SETTABLEKS                       R2 R1 K0 ["isSearchButtonHovered"]
        4 LOADB                            R2 0
        5 SETTABLEKS                       R2 R1 K1 ["isClearButtonHovered"]
        7 SETTABLEKS                       R1 R0 K3 ["state"]
        9 NEWCLOSURE                       R1 P0
       10 CAPTURE                          VAL R0
       11 SETTABLEKS                       R1 R0 K4 ["onClearButtonHovered"]
       13 NEWCLOSURE                       R1 P1
       14 CAPTURE                          VAL R0
       15 SETTABLEKS                       R1 R0 K5 ["onClearButtonHoverEnded"]
       17 NEWCLOSURE                       R1 P2
       18 CAPTURE                          VAL R0
       19 SETTABLEKS                       R1 R0 K6 ["onClearButtonClicked"]
       21 NEWCLOSURE                       R1 P3
       22 CAPTURE                          VAL R0
       23 SETTABLEKS                       R1 R0 K7 ["onSearchButtonHovered"]
       25 NEWCLOSURE                       R1 P4
       26 CAPTURE                          VAL R0
       27 SETTABLEKS                       R1 R0 K8 ["onSearchButtonHoverEnded"]
       29 RETURN                           R0 0

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
       34 DUPTABLE                         R15 K18 [{"AnchorPoint", "Position", "Size", "BackgroundTransparency"}]
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
       60 LOADN                            R16 1
       61 SETTABLEKS                       R16 R15 K17 ["BackgroundTransparency"]
       63 DUPTABLE                         R16 K27 [{"ClearButton", "Line", "SearchButton"}]
       64 MOVE                             R17 R6
       65 JUMPIFNOT                        R17 ; [+128]
       66 GETUPVAL                         R17 1
       67 GETTABLEKS                       R17 R17 K12 ["createElement"]
       69 LOADK                            R18 K28 ["ImageButton"]
       70 NEWTABLE                         R19 8 0
       72 GETIMPORT                        R20 K21 [Vector2.new]
       74 LOADN                            R21 0
       75 LOADN                            R22 0
       76 CALL                             R20 2 1
       77 SETTABLEKS                       R20 R19 K14 ["AnchorPoint"]
       79 GETIMPORT                        R20 K23 [UDim2.new]
       81 LOADN                            R21 0
       82 MOVE                             R22 R11
       83 LOADN                            R23 0
       84 MOVE                             R24 R11
       85 CALL                             R20 4 1
       86 SETTABLEKS                       R20 R19 K15 ["Position"]
       88 GETIMPORT                        R20 K23 [UDim2.new]
       90 LOADN                            R21 0
       91 LOADN                            R24 2
       92 MUL                              R23 R24 R11
       93 SUB                              R22 R9 R23
       94 LOADN                            R23 1
       95 LOADN                            R26 2
       96 MUL                              R25 R26 R11
       97 MINUS                            R24 R25
       98 CALL                             R20 4 1
       99 SETTABLEKS                       R20 R19 K16 ["Size"]
      101 LOADN                            R20 1
      102 SETTABLEKS                       R20 R19 K17 ["BackgroundTransparency"]
      104 GETUPVAL                         R20 1
      105 GETTABLEKS                       R20 R20 K29 ["Event"]
      107 GETTABLEKS                       R20 R20 K30 ["MouseEnter"]
      109 GETTABLEKS                       R21 R0 K31 ["onClearButtonHovered"]
      111 SETTABLE                         R21 R19 R20
      112 GETUPVAL                         R20 1
      113 GETTABLEKS                       R20 R20 K29 ["Event"]
      115 GETTABLEKS                       R20 R20 K32 ["MouseMoved"]
      117 GETTABLEKS                       R21 R0 K31 ["onClearButtonHovered"]
      119 SETTABLE                         R21 R19 R20
      120 GETUPVAL                         R20 1
      121 GETTABLEKS                       R20 R20 K29 ["Event"]
      123 GETTABLEKS                       R20 R20 K33 ["MouseLeave"]
      125 GETTABLEKS                       R21 R0 K34 ["onClearButtonHoverEnded"]
      127 SETTABLE                         R21 R19 R20
      128 GETUPVAL                         R20 1
      129 GETTABLEKS                       R20 R20 K29 ["Event"]
      131 GETTABLEKS                       R20 R20 K35 ["MouseButton1Down"]
      133 GETTABLEKS                       R21 R0 K36 ["onClearButtonClicked"]
      135 SETTABLE                         R21 R19 R20
      136 DUPTABLE                         R20 K38 [{"ImageLabel"}]
      137 GETUPVAL                         R21 1
      138 GETTABLEKS                       R21 R21 K12 ["createElement"]
      140 LOADK                            R22 K37 ["ImageLabel"]
      141 DUPTABLE                         R23 K41 [{"AnchorPoint", "Position", "Size", "BackgroundTransparency", "Image", "ImageColor3"}]
      142 GETIMPORT                        R24 K21 [Vector2.new]
      144 LOADK                            R25 K42 [0.5]
      145 LOADK                            R26 K42 [0.5]
      146 CALL                             R24 2 1
      147 SETTABLEKS                       R24 R23 K14 ["AnchorPoint"]
      149 GETIMPORT                        R24 K23 [UDim2.new]
      151 LOADK                            R25 K42 [0.5]
      152 LOADN                            R26 0
      153 LOADK                            R27 K42 [0.5]
      154 LOADN                            R28 0
      155 CALL                             R24 4 1
      156 SETTABLEKS                       R24 R23 K15 ["Position"]
      158 GETIMPORT                        R24 K23 [UDim2.new]
      160 LOADN                            R25 0
      161 GETUPVAL                         R26 0
      162 GETTABLEKS                       R26 R26 K43 ["SEARCH_BAR_BUTTON_ICON_SIZE"]
      164 LOADN                            R27 0
      165 GETUPVAL                         R28 0
      166 GETTABLEKS                       R28 R28 K43 ["SEARCH_BAR_BUTTON_ICON_SIZE"]
      168 CALL                             R24 4 1
      169 SETTABLEKS                       R24 R23 K16 ["Size"]
      171 LOADN                            R24 1
      172 SETTABLEKS                       R24 R23 K17 ["BackgroundTransparency"]
      174 JUMPIFNOT                        R5 ; [+4]
      175 GETUPVAL                         R24 2
      176 GETTABLEKS                       R24 R24 K44 ["CLEAR_ICON_HOVER"]
      178 JUMPIF                           R24 ; [+3]
      179 GETUPVAL                         R24 2
      180 GETTABLEKS                       R24 R24 K45 ["CLEAR_ICON"]
      182 SETTABLEKS                       R24 R23 K39 ["Image"]
      184 GETTABLEKS                       R24 R12 K46 ["clearButton"]
      186 GETTABLEKS                       R24 R24 K47 ["imageColor"]
      188 SETTABLEKS                       R24 R23 K40 ["ImageColor3"]
      190 CALL                             R21 2 1
      191 SETTABLEKS                       R21 R20 K37 ["ImageLabel"]
      193 CALL                             R17 3 1
      194 SETTABLEKS                       R17 R16 K24 ["ClearButton"]
      196 MOVE                             R17 R7
      197 JUMPIFNOT                        R17 ; [+38]
      198 GETUPVAL                         R17 1
      199 GETTABLEKS                       R17 R17 K12 ["createElement"]
      201 LOADK                            R18 K13 ["Frame"]
      202 DUPTABLE                         R19 K50 [{"AnchorPoint", "Position", "Size", "BackgroundColor3", "BorderSizePixel"}]
      203 GETIMPORT                        R20 K21 [Vector2.new]
      205 LOADN                            R21 0
      206 LOADN                            R22 0
      207 CALL                             R20 2 1
      208 SETTABLEKS                       R20 R19 K14 ["AnchorPoint"]
      210 GETIMPORT                        R20 K23 [UDim2.new]
      212 LOADN                            R21 0
      213 MOVE                             R22 R9
      214 LOADN                            R23 0
      215 LOADN                            R24 1
      216 CALL                             R20 4 1
      217 SETTABLEKS                       R20 R19 K15 ["Position"]
      219 GETIMPORT                        R20 K23 [UDim2.new]
      221 LOADN                            R21 0
      222 LOADN                            R22 1
      223 LOADN                            R23 1
      224 LOADN                            R24 254
      225 CALL                             R20 4 1
      226 SETTABLEKS                       R20 R19 K16 ["Size"]
      228 GETTABLEKS                       R20 R12 K51 ["divideLineColor"]
      230 SETTABLEKS                       R20 R19 K48 ["BackgroundColor3"]
      232 LOADN                            R20 0
      233 SETTABLEKS                       R20 R19 K49 ["BorderSizePixel"]
      235 CALL                             R17 2 1
      236 SETTABLEKS                       R17 R16 K25 ["Line"]
      238 MOVE                             R17 R7
      239 JUMPIFNOT                        R17 ; [+127]
      240 GETUPVAL                         R17 1
      241 GETTABLEKS                       R17 R17 K12 ["createElement"]
      243 LOADK                            R18 K28 ["ImageButton"]
      244 NEWTABLE                         R19 8 0
      246 GETIMPORT                        R20 K21 [Vector2.new]
      248 LOADN                            R21 1
      249 LOADN                            R22 0
      250 CALL                             R20 2 1
      251 SETTABLEKS                       R20 R19 K14 ["AnchorPoint"]
      253 GETIMPORT                        R20 K23 [UDim2.new]
      255 LOADN                            R21 1
      256 MINUS                            R22 R11
      257 LOADN                            R23 0
      258 MOVE                             R24 R11
      259 CALL                             R20 4 1
      260 SETTABLEKS                       R20 R19 K15 ["Position"]
      262 GETIMPORT                        R20 K23 [UDim2.new]
      264 LOADN                            R21 0
      265 LOADN                            R24 2
      266 MUL                              R23 R24 R11
      267 SUB                              R22 R9 R23
      268 LOADN                            R23 1
      269 LOADN                            R26 2
      270 MUL                              R25 R26 R11
      271 MINUS                            R24 R25
      272 CALL                             R20 4 1
      273 SETTABLEKS                       R20 R19 K16 ["Size"]
      275 LOADN                            R20 1
      276 SETTABLEKS                       R20 R19 K17 ["BackgroundTransparency"]
      278 GETUPVAL                         R20 1
      279 GETTABLEKS                       R20 R20 K29 ["Event"]
      281 GETTABLEKS                       R20 R20 K30 ["MouseEnter"]
      283 GETTABLEKS                       R21 R0 K52 ["onSearchButtonHovered"]
      285 SETTABLE                         R21 R19 R20
      286 GETUPVAL                         R20 1
      287 GETTABLEKS                       R20 R20 K29 ["Event"]
      289 GETTABLEKS                       R20 R20 K32 ["MouseMoved"]
      291 GETTABLEKS                       R21 R0 K52 ["onSearchButtonHovered"]
      293 SETTABLE                         R21 R19 R20
      294 GETUPVAL                         R20 1
      295 GETTABLEKS                       R20 R20 K29 ["Event"]
      297 GETTABLEKS                       R20 R20 K33 ["MouseLeave"]
      299 GETTABLEKS                       R21 R0 K53 ["onSearchButtonHoverEnded"]
      301 SETTABLE                         R21 R19 R20
      302 GETUPVAL                         R20 1
      303 GETTABLEKS                       R20 R20 K29 ["Event"]
      305 GETTABLEKS                       R20 R20 K35 ["MouseButton1Down"]
      307 SETTABLE                         R8 R19 R20
      308 DUPTABLE                         R20 K38 [{"ImageLabel"}]
      309 GETUPVAL                         R21 1
      310 GETTABLEKS                       R21 R21 K12 ["createElement"]
      312 LOADK                            R22 K37 ["ImageLabel"]
      313 DUPTABLE                         R23 K41 [{"AnchorPoint", "Position", "Size", "BackgroundTransparency", "Image", "ImageColor3"}]
      314 GETIMPORT                        R24 K21 [Vector2.new]
      316 LOADK                            R25 K42 [0.5]
      317 LOADK                            R26 K42 [0.5]
      318 CALL                             R24 2 1
      319 SETTABLEKS                       R24 R23 K14 ["AnchorPoint"]
      321 GETIMPORT                        R24 K23 [UDim2.new]
      323 LOADK                            R25 K42 [0.5]
      324 LOADN                            R26 0
      325 LOADK                            R27 K42 [0.5]
      326 LOADN                            R28 0
      327 CALL                             R24 4 1
      328 SETTABLEKS                       R24 R23 K15 ["Position"]
      330 GETIMPORT                        R24 K23 [UDim2.new]
      332 LOADN                            R25 0
      333 GETUPVAL                         R26 0
      334 GETTABLEKS                       R26 R26 K43 ["SEARCH_BAR_BUTTON_ICON_SIZE"]
      336 LOADN                            R27 0
      337 GETUPVAL                         R28 0
      338 GETTABLEKS                       R28 R28 K43 ["SEARCH_BAR_BUTTON_ICON_SIZE"]
      340 CALL                             R24 4 1
      341 SETTABLEKS                       R24 R23 K16 ["Size"]
      343 LOADN                            R24 1
      344 SETTABLEKS                       R24 R23 K17 ["BackgroundTransparency"]
      346 GETUPVAL                         R24 2
      347 GETTABLEKS                       R24 R24 K54 ["SEARCH_ICON"]
      349 SETTABLEKS                       R24 R23 K39 ["Image"]
      351 JUMPIFNOT                        R4 ; [+5]
      352 GETTABLEKS                       R24 R12 K55 ["searchButton"]
      354 GETTABLEKS                       R24 R24 K56 ["imageSelectedColor"]
      356 JUMPIF                           R24 ; [+4]
      357 GETTABLEKS                       R24 R12 K55 ["searchButton"]
      359 GETTABLEKS                       R24 R24 K47 ["imageColor"]
      361 SETTABLEKS                       R24 R23 K40 ["ImageColor3"]
      363 CALL                             R21 2 1
      364 SETTABLEKS                       R21 R20 K37 ["ImageLabel"]
      366 CALL                             R17 3 1
      367 SETTABLEKS                       R17 R16 K26 ["SearchButton"]
      369 CALL                             R13 3 -1
      370 RETURN                           R13 -1

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
