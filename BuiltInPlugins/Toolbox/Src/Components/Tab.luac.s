PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R0 R0 K1 ["Disabled"]
        5 JUMPIFNOT                        R0 ; [+1]
        6 RETURN                           R0 0
        7 GETUPVAL                         R0 0
        8 GETTABLEKS                       R0 R0 K0 ["props"]
       10 GETTABLEKS                       R0 R0 K2 ["onClick"]
       12 JUMPIFNOT                        R0 ; [+6]
       13 GETUPVAL                         R0 0
       14 GETTABLEKS                       R0 R0 K0 ["props"]
       16 GETTABLEKS                       R0 R0 K2 ["onClick"]
       18 CALL                             R0 0 0
       19 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R0 R0 K1 ["Disabled"]
        5 JUMPIFNOT                        R0 ; [+1]
        6 RETURN                           R0 0
        7 GETUPVAL                         R0 0
        8 DUPTABLE                         R2 K3 [{"hovered"}]
        9 LOADB                            R3 1
       10 SETTABLEKS                       R3 R2 K2 ["hovered"]
       12 NAMECALL                         R0 R0 K4 ["setState"]
       14 CALL                             R0 2 0
       15 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R0 R0 K1 ["Disabled"]
        5 JUMPIFNOT                        R0 ; [+1]
        6 RETURN                           R0 0
        7 GETUPVAL                         R0 0
        8 DUPTABLE                         R2 K3 [{"hovered"}]
        9 LOADB                            R3 0
       10 SETTABLEKS                       R3 R2 K2 ["hovered"]
       12 NAMECALL                         R0 R0 K4 ["setState"]
       14 CALL                             R0 2 0
       15 RETURN                           R0 0

PROTO_3:
        0 DUPTABLE                         R1 K1 [{"hovered"}]
        1 LOADB                            R2 0
        2 SETTABLEKS                       R2 R1 K0 ["hovered"]
        4 SETTABLEKS                       R1 R0 K2 ["state"]
        6 NEWCLOSURE                       R1 P0
        7 CAPTURE                          VAL R0
        8 SETTABLEKS                       R1 R0 K3 ["onClick"]
       10 NEWCLOSURE                       R1 P1
       11 CAPTURE                          VAL R0
       12 SETTABLEKS                       R1 R0 K4 ["mouseEnter"]
       14 NEWCLOSURE                       R1 P2
       15 CAPTURE                          VAL R0
       16 SETTABLEKS                       R1 R0 K5 ["mouseLeave"]
       18 RETURN                           R0 0

PROTO_4:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R1 R1 K1 ["Stylizer"]
        4 GETTABLEKS                       R3 R0 K0 ["props"]
        6 GETTABLEKS                       R3 R3 K3 ["Text"]
        8 ORK                              R2 R3 K2 [""]
        9 GETTABLEKS                       R3 R0 K0 ["props"]
       11 GETTABLEKS                       R3 R3 K4 ["Image"]
       13 GETTABLEKS                       R5 R0 K0 ["props"]
       15 GETTABLEKS                       R5 R5 K6 ["LayoutOrder"]
       17 ORK                              R4 R5 K5 [0]
       18 GETTABLEKS                       R6 R0 K0 ["props"]
       20 GETTABLEKS                       R6 R6 K8 ["Selected"]
       22 ORK                              R5 R6 K7 [False]
       23 GETTABLEKS                       R6 R0 K9 ["state"]
       25 GETTABLEKS                       R6 R6 K10 ["hovered"]
       27 GETTABLEKS                       R7 R1 K11 ["tabSet"]
       29 GETTABLEKS                       R8 R0 K0 ["props"]
       31 GETTABLEKS                       R8 R8 K12 ["TabWidth"]
       33 GETTABLEKS                       R9 R0 K0 ["props"]
       35 GETTABLEKS                       R9 R9 K13 ["DisplayText"]
       37 GETTABLEKS                       R10 R0 K0 ["props"]
       39 GETTABLEKS                       R10 R10 K14 ["Disabled"]
       41 GETUPVAL                         R11 0
       42 MOVE                             R12 R2
       43 LOADNIL                          R13
       44 GETUPVAL                         R14 1
       45 GETTABLEKS                       R14 R14 K15 ["FONT_BOLD"]
       47 GETIMPORT                        R15 K18 [Vector2.new]
       49 LOADN                            R16 0
       50 LOADN                            R17 0
       51 CALL                             R15 2 -1
       52 CALL                             R11 -1 1
       53 GETTABLEKS                       R11 R11 K19 ["X"]
       55 JUMPIFNOT                        R10 ; [+3]
       56 GETTABLEKS                       R12 R7 K20 ["disabledColor"]
       58 JUMP                             ; [+7]
       59 JUMPIF                           R5 ; [+1]
       60 JUMPIFNOT                        R6 ; [+3]
       61 GETTABLEKS                       R12 R7 K21 ["selectedColor"]
       63 JUMP                             ; [+2]
       64 GETTABLEKS                       R12 R7 K22 ["contentColor"]
       66 JUMPIF                           R9 ; [+18]
       67 GETUPVAL                         R13 2
       68 GETTABLEKS                       R13 R13 K23 ["createElement"]
       70 GETUPVAL                         R14 3
       71 DUPTABLE                         R15 K25 [{"AnchorPoint", "Text"}]
       72 GETIMPORT                        R16 K27 [UDim2.new]
       74 LOADN                            R17 0
       75 LOADN                            R18 0
       76 LOADN                            R19 0
       77 LOADN                            R20 50
       78 CALL                             R16 4 1
       79 SETTABLEKS                       R16 R15 K24 ["AnchorPoint"]
       81 SETTABLEKS                       R2 R15 K3 ["Text"]
       83 CALL                             R13 2 1
       84 JUMPIF                           R13 ; [+1]
       85 LOADNIL                          R13
       86 GETUPVAL                         R14 2
       87 GETTABLEKS                       R14 R14 K23 ["createElement"]
       89 LOADK                            R15 K28 ["ImageButton"]
       90 NEWTABLE                         R16 16 0
       92 SETTABLEKS                       R4 R16 K6 ["LayoutOrder"]
       94 GETIMPORT                        R17 K27 [UDim2.new]
       96 LOADN                            R18 0
       97 MOVE                             R19 R8
       98 LOADN                            R20 1
       99 LOADN                            R21 0
      100 CALL                             R17 4 1
      101 SETTABLEKS                       R17 R16 K29 ["Size"]
      103 JUMPIFNOT                        R5 ; [+2]
      104 LOADN                            R17 2
      105 JUMP                             ; [+1]
      106 LOADN                            R17 0
      107 SETTABLEKS                       R17 R16 K30 ["BorderSizePixel"]
      109 GETTABLEKS                       R17 R7 K31 ["borderColor"]
      111 SETTABLEKS                       R17 R16 K32 ["BorderColor3"]
      113 JUMPIFNOT                        R5 ; [+2]
      114 LOADN                            R17 2
      115 JUMP                             ; [+1]
      116 LOADN                            R17 0
      117 SETTABLEKS                       R17 R16 K33 ["ZIndex"]
      119 GETTABLEKS                       R17 R7 K34 ["tabBackground"]
      121 SETTABLEKS                       R17 R16 K35 ["BackgroundColor3"]
      123 LOADB                            R17 0
      124 SETTABLEKS                       R17 R16 K36 ["AutoButtonColor"]
      126 GETUPVAL                         R17 2
      127 GETTABLEKS                       R17 R17 K37 ["Event"]
      129 GETTABLEKS                       R17 R17 K38 ["MouseEnter"]
      131 GETTABLEKS                       R18 R0 K39 ["mouseEnter"]
      133 SETTABLE                         R18 R16 R17
      134 GETUPVAL                         R17 2
      135 GETTABLEKS                       R17 R17 K37 ["Event"]
      137 GETTABLEKS                       R17 R17 K40 ["MouseLeave"]
      139 GETTABLEKS                       R18 R0 K41 ["mouseLeave"]
      141 SETTABLE                         R18 R16 R17
      142 GETUPVAL                         R17 2
      143 GETTABLEKS                       R17 R17 K37 ["Event"]
      145 GETTABLEKS                       R17 R17 K42 ["Activated"]
      147 GETTABLEKS                       R18 R0 K43 ["onClick"]
      149 SETTABLE                         R18 R16 R17
      150 DUPTABLE                         R17 K48 [{"Tooltip", "UpperBorder", "LowerBorder", "Content"}]
      151 SETTABLEKS                       R13 R17 K44 ["Tooltip"]
      153 MOVE                             R18 R5
      154 JUMPIFNOT                        R18 ; [+22]
      155 GETUPVAL                         R18 2
      156 GETTABLEKS                       R18 R18 K23 ["createElement"]
      158 LOADK                            R19 K49 ["Frame"]
      159 DUPTABLE                         R20 K50 [{"Size", "BorderSizePixel", "BackgroundColor3"}]
      160 GETIMPORT                        R21 K27 [UDim2.new]
      162 LOADN                            R22 1
      163 LOADN                            R23 0
      164 LOADN                            R24 0
      165 LOADN                            R25 2
      166 CALL                             R21 4 1
      167 SETTABLEKS                       R21 R20 K29 ["Size"]
      169 LOADN                            R21 0
      170 SETTABLEKS                       R21 R20 K30 ["BorderSizePixel"]
      172 GETTABLEKS                       R21 R7 K51 ["topBorderColor"]
      174 SETTABLEKS                       R21 R20 K35 ["BackgroundColor3"]
      176 CALL                             R18 2 1
      177 SETTABLEKS                       R18 R17 K45 ["UpperBorder"]
      179 NOT                              R18 R5
      180 JUMPIFNOT                        R18 ; [+38]
      181 GETUPVAL                         R18 2
      182 GETTABLEKS                       R18 R18 K23 ["createElement"]
      184 LOADK                            R19 K49 ["Frame"]
      185 DUPTABLE                         R20 K53 [{"Size", "AnchorPoint", "Position", "BorderSizePixel", "BackgroundColor3"}]
      186 GETIMPORT                        R21 K27 [UDim2.new]
      188 LOADN                            R22 1
      189 LOADN                            R23 0
      190 LOADN                            R24 0
      191 LOADN                            R25 2
      192 CALL                             R21 4 1
      193 SETTABLEKS                       R21 R20 K29 ["Size"]
      195 GETIMPORT                        R21 K18 [Vector2.new]
      197 LOADN                            R22 0
      198 LOADN                            R23 1
      199 CALL                             R21 2 1
      200 SETTABLEKS                       R21 R20 K24 ["AnchorPoint"]
      202 GETIMPORT                        R21 K27 [UDim2.new]
      204 LOADN                            R22 0
      205 LOADN                            R23 0
      206 LOADN                            R24 1
      207 LOADN                            R25 0
      208 CALL                             R21 4 1
      209 SETTABLEKS                       R21 R20 K52 ["Position"]
      211 LOADN                            R21 0
      212 SETTABLEKS                       R21 R20 K30 ["BorderSizePixel"]
      214 GETTABLEKS                       R21 R7 K31 ["borderColor"]
      216 SETTABLEKS                       R21 R20 K35 ["BackgroundColor3"]
      218 CALL                             R18 2 1
      219 SETTABLEKS                       R18 R17 K46 ["LowerBorder"]
      221 GETUPVAL                         R18 2
      222 GETTABLEKS                       R18 R18 K23 ["createElement"]
      224 LOADK                            R19 K49 ["Frame"]
      225 DUPTABLE                         R20 K55 [{"Size", "Position", "BackgroundTransparency", "LayoutOrder"}]
      226 GETIMPORT                        R21 K27 [UDim2.new]
      228 LOADN                            R22 1
      229 GETUPVAL                         R25 1
      230 GETTABLEKS                       R25 R25 K57 ["TAB_OUTER_PADDING"]
      232 MULK                             R24 R25 K56 [2]
      233 MINUS                            R23 R24
      234 LOADN                            R24 1
      235 LOADN                            R25 0
      236 CALL                             R21 4 1
      237 SETTABLEKS                       R21 R20 K29 ["Size"]
      239 GETIMPORT                        R21 K27 [UDim2.new]
      241 LOADN                            R22 0
      242 GETUPVAL                         R23 1
      243 GETTABLEKS                       R23 R23 K57 ["TAB_OUTER_PADDING"]
      245 LOADN                            R24 0
      246 LOADN                            R25 0
      247 CALL                             R21 4 1
      248 SETTABLEKS                       R21 R20 K52 ["Position"]
      250 LOADN                            R21 1
      251 SETTABLEKS                       R21 R20 K54 ["BackgroundTransparency"]
      253 LOADN                            R21 1
      254 SETTABLEKS                       R21 R20 K6 ["LayoutOrder"]
      256 DUPTABLE                         R21 K60 [{"Layout", "Icon", "Text"}]
      257 GETUPVAL                         R22 2
      258 GETTABLEKS                       R22 R22 K23 ["createElement"]
      260 LOADK                            R23 K61 ["UIListLayout"]
      261 DUPTABLE                         R24 K67 [{"SortOrder", "FillDirection", "HorizontalAlignment", "VerticalAlignment", "Padding"}]
      262 GETIMPORT                        R25 K69 [Enum.SortOrder.LayoutOrder]
      264 SETTABLEKS                       R25 R24 K62 ["SortOrder"]
      266 GETIMPORT                        R25 K71 [Enum.FillDirection.Horizontal]
      268 SETTABLEKS                       R25 R24 K63 ["FillDirection"]
      270 GETIMPORT                        R25 K73 [Enum.HorizontalAlignment.Center]
      272 SETTABLEKS                       R25 R24 K64 ["HorizontalAlignment"]
      274 GETIMPORT                        R25 K74 [Enum.VerticalAlignment.Center]
      276 SETTABLEKS                       R25 R24 K65 ["VerticalAlignment"]
      278 GETIMPORT                        R25 K76 [UDim.new]
      280 LOADN                            R26 0
      281 GETUPVAL                         R27 1
      282 GETTABLEKS                       R27 R27 K77 ["TAB_INNER_PADDING"]
      284 CALL                             R25 2 1
      285 SETTABLEKS                       R25 R24 K66 ["Padding"]
      287 CALL                             R22 2 1
      288 SETTABLEKS                       R22 R21 K58 ["Layout"]
      290 GETUPVAL                         R22 2
      291 GETTABLEKS                       R22 R22 K23 ["createElement"]
      293 LOADK                            R23 K78 ["ImageLabel"]
      294 DUPTABLE                         R24 K80 [{"LayoutOrder", "Size", "BackgroundTransparency", "ImageColor3", "Image"}]
      295 LOADN                            R25 1
      296 SETTABLEKS                       R25 R24 K6 ["LayoutOrder"]
      298 GETIMPORT                        R25 K27 [UDim2.new]
      300 LOADN                            R26 0
      301 GETUPVAL                         R27 1
      302 GETTABLEKS                       R27 R27 K81 ["TAB_ICON_SIZE"]
      304 LOADN                            R28 0
      305 GETUPVAL                         R29 1
      306 GETTABLEKS                       R29 R29 K81 ["TAB_ICON_SIZE"]
      308 CALL                             R25 4 1
      309 SETTABLEKS                       R25 R24 K29 ["Size"]
      311 LOADN                            R25 1
      312 SETTABLEKS                       R25 R24 K54 ["BackgroundTransparency"]
      314 SETTABLEKS                       R12 R24 K79 ["ImageColor3"]
      316 SETTABLEKS                       R3 R24 K4 ["Image"]
      318 CALL                             R22 2 1
      319 SETTABLEKS                       R22 R21 K59 ["Icon"]
      321 MOVE                             R22 R9
      322 JUMPIFNOT                        R22 ; [+47]
      323 GETUPVAL                         R22 2
      324 GETTABLEKS                       R22 R22 K23 ["createElement"]
      326 LOADK                            R23 K82 ["TextLabel"]
      327 DUPTABLE                         R24 K88 [{"LayoutOrder", "Text", "Font", "TextSize", "BackgroundTransparency", "TextColor3", "Size", "TextXAlignment", "ClipsDescendants"}]
      328 LOADN                            R25 2
      329 SETTABLEKS                       R25 R24 K6 ["LayoutOrder"]
      331 SETTABLEKS                       R2 R24 K3 ["Text"]
      333 JUMPIFNOT                        R5 ; [+4]
      334 GETUPVAL                         R25 1
      335 GETTABLEKS                       R25 R25 K15 ["FONT_BOLD"]
      337 JUMPIF                           R25 ; [+3]
      338 GETUPVAL                         R25 1
      339 GETTABLEKS                       R25 R25 K89 ["FONT"]
      341 SETTABLEKS                       R25 R24 K83 ["Font"]
      343 GETUPVAL                         R25 1
      344 GETTABLEKS                       R25 R25 K90 ["FONT_SIZE_MEDIUM"]
      346 SETTABLEKS                       R25 R24 K84 ["TextSize"]
      348 LOADN                            R25 1
      349 SETTABLEKS                       R25 R24 K54 ["BackgroundTransparency"]
      351 SETTABLEKS                       R12 R24 K85 ["TextColor3"]
      353 GETIMPORT                        R25 K27 [UDim2.new]
      355 LOADN                            R26 0
      356 MOVE                             R27 R11
      357 LOADN                            R28 1
      358 LOADN                            R29 0
      359 CALL                             R25 4 1
      360 SETTABLEKS                       R25 R24 K29 ["Size"]
      362 GETIMPORT                        R25 K92 [Enum.TextXAlignment.Left]
      364 SETTABLEKS                       R25 R24 K86 ["TextXAlignment"]
      366 LOADB                            R25 1
      367 SETTABLEKS                       R25 R24 K87 ["ClipsDescendants"]
      369 CALL                             R22 2 1
      370 SETTABLEKS                       R22 R21 K3 ["Text"]
      372 CALL                             R18 3 1
      373 SETTABLEKS                       R18 R17 K47 ["Content"]
      375 CALL                             R14 3 -1
      376 RETURN                           R14 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETTABLEKS                       R1 R0 K3 ["Packages"]
       11 GETIMPORT                        R2 K5 [require]
       13 GETTABLEKS                       R3 R1 K6 ["Roact"]
       15 CALL                             R2 1 1
       16 GETIMPORT                        R3 K5 [require]
       18 GETTABLEKS                       R4 R1 K7 ["Framework"]
       20 CALL                             R3 1 1
       21 GETIMPORT                        R4 K5 [require]
       23 GETTABLEKS                       R5 R0 K8 ["Src"]
       25 GETTABLEKS                       R5 R5 K9 ["Util"]
       27 GETTABLEKS                       R5 R5 K10 ["Constants"]
       29 CALL                             R4 1 1
       30 GETTABLEKS                       R5 R3 K11 ["UI"]
       32 GETTABLEKS                       R5 R5 K12 ["Tooltip"]
       34 GETTABLEKS                       R6 R3 K9 ["Util"]
       36 GETTABLEKS                       R6 R6 K13 ["GetTextSize"]
       38 GETTABLEKS                       R7 R3 K14 ["ContextServices"]
       40 GETTABLEKS                       R8 R7 K15 ["withContext"]
       42 GETTABLEKS                       R9 R2 K16 ["PureComponent"]
       44 LOADK                            R11 K17 ["Tab"]
       45 NAMECALL                         R9 R9 K18 ["extend"]
       47 CALL                             R9 2 1
       48 DUPCLOSURE                       R10 K19 [PROTO_3]
       49 SETTABLEKS                       R10 R9 K20 ["init"]
       51 DUPCLOSURE                       R10 K21 [PROTO_4]
       52 CAPTURE                          VAL R6
       53 CAPTURE                          VAL R4
       54 CAPTURE                          VAL R2
       55 CAPTURE                          VAL R5
       56 SETTABLEKS                       R10 R9 K22 ["render"]
       58 MOVE                             R10 R8
       59 DUPTABLE                         R11 K24 [{"Stylizer"}]
       60 GETTABLEKS                       R12 R7 K23 ["Stylizer"]
       62 SETTABLEKS                       R12 R11 K23 ["Stylizer"]
       64 CALL                             R10 1 1
       65 MOVE                             R11 R9
       66 CALL                             R10 1 1
       67 MOVE                             R9 R10
       68 RETURN                           R9 1
