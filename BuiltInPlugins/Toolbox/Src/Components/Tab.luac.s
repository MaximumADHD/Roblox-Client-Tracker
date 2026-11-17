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
        8 DUPTABLE                         R2 K4 [{["hovered"] = True}]
        9 NAMECALL                         R0 R0 K5 ["setState"]
       11 CALL                             R0 2 0
       12 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R0 R0 K1 ["Disabled"]
        5 JUMPIFNOT                        R0 ; [+1]
        6 RETURN                           R0 0
        7 GETUPVAL                         R0 0
        8 DUPTABLE                         R2 K4 [{["hovered"] = False}]
        9 NAMECALL                         R0 R0 K5 ["setState"]
       11 CALL                             R0 2 0
       12 RETURN                           R0 0

PROTO_3:
        0 DUPTABLE                         R1 K2 [{[1] = False}]
        1 SETTABLEKS                       R1 R0 K3 ["state"]
        3 NEWCLOSURE                       R1 P0
        4 CAPTURE                          VAL R0
        5 SETTABLEKS                       R1 R0 K4 ["onClick"]
        7 NEWCLOSURE                       R1 P1
        8 CAPTURE                          VAL R0
        9 SETTABLEKS                       R1 R0 K5 ["mouseEnter"]
       11 NEWCLOSURE                       R1 P2
       12 CAPTURE                          VAL R0
       13 SETTABLEKS                       R1 R0 K6 ["mouseLeave"]
       15 RETURN                           R0 0

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
      154 JUMPIFNOT                        R18 ; [+19]
      155 GETUPVAL                         R18 2
      156 GETTABLEKS                       R18 R18 K23 ["createElement"]
      158 LOADK                            R19 K49 ["Frame"]
      159 DUPTABLE                         R20 K50 [{["Size"], ["BorderSizePixel"] = 0, ["BackgroundColor3"]}]
      160 GETIMPORT                        R21 K27 [UDim2.new]
      162 LOADN                            R22 1
      163 LOADN                            R23 0
      164 LOADN                            R24 0
      165 LOADN                            R25 2
      166 CALL                             R21 4 1
      167 SETTABLEKS                       R21 R20 K29 ["Size"]
      169 GETTABLEKS                       R21 R7 K51 ["topBorderColor"]
      171 SETTABLEKS                       R21 R20 K35 ["BackgroundColor3"]
      173 CALL                             R18 2 1
      174 SETTABLEKS                       R18 R17 K45 ["UpperBorder"]
      176 NOT                              R18 R5
      177 JUMPIFNOT                        R18 ; [+35]
      178 GETUPVAL                         R18 2
      179 GETTABLEKS                       R18 R18 K23 ["createElement"]
      181 LOADK                            R19 K49 ["Frame"]
      182 DUPTABLE                         R20 K53 [{["Size"], ["AnchorPoint"], ["Position"], ["BorderSizePixel"] = 0, ["BackgroundColor3"]}]
      183 GETIMPORT                        R21 K27 [UDim2.new]
      185 LOADN                            R22 1
      186 LOADN                            R23 0
      187 LOADN                            R24 0
      188 LOADN                            R25 2
      189 CALL                             R21 4 1
      190 SETTABLEKS                       R21 R20 K29 ["Size"]
      192 GETIMPORT                        R21 K18 [Vector2.new]
      194 LOADN                            R22 0
      195 LOADN                            R23 1
      196 CALL                             R21 2 1
      197 SETTABLEKS                       R21 R20 K24 ["AnchorPoint"]
      199 GETIMPORT                        R21 K27 [UDim2.new]
      201 LOADN                            R22 0
      202 LOADN                            R23 0
      203 LOADN                            R24 1
      204 LOADN                            R25 0
      205 CALL                             R21 4 1
      206 SETTABLEKS                       R21 R20 K52 ["Position"]
      208 GETTABLEKS                       R21 R7 K31 ["borderColor"]
      210 SETTABLEKS                       R21 R20 K35 ["BackgroundColor3"]
      212 CALL                             R18 2 1
      213 SETTABLEKS                       R18 R17 K46 ["LowerBorder"]
      215 GETUPVAL                         R18 2
      216 GETTABLEKS                       R18 R18 K23 ["createElement"]
      218 LOADK                            R19 K49 ["Frame"]
      219 DUPTABLE                         R20 K56 [{["Size"], ["Position"], ["BackgroundTransparency"] = 1, ["LayoutOrder"] = 1}]
      220 GETIMPORT                        R21 K27 [UDim2.new]
      222 LOADN                            R22 1
      223 GETUPVAL                         R25 1
      224 GETTABLEKS                       R25 R25 K58 ["TAB_OUTER_PADDING"]
      226 MULK                             R24 R25 K57 [2]
      227 MINUS                            R23 R24
      228 LOADN                            R24 1
      229 LOADN                            R25 0
      230 CALL                             R21 4 1
      231 SETTABLEKS                       R21 R20 K29 ["Size"]
      233 GETIMPORT                        R21 K27 [UDim2.new]
      235 LOADN                            R22 0
      236 GETUPVAL                         R23 1
      237 GETTABLEKS                       R23 R23 K58 ["TAB_OUTER_PADDING"]
      239 LOADN                            R24 0
      240 LOADN                            R25 0
      241 CALL                             R21 4 1
      242 SETTABLEKS                       R21 R20 K52 ["Position"]
      244 DUPTABLE                         R21 K61 [{"Layout", "Icon", "Text"}]
      245 GETUPVAL                         R22 2
      246 GETTABLEKS                       R22 R22 K23 ["createElement"]
      248 LOADK                            R23 K62 ["UIListLayout"]
      249 DUPTABLE                         R24 K68 [{"SortOrder", "FillDirection", "HorizontalAlignment", "VerticalAlignment", "Padding"}]
      250 GETIMPORT                        R25 K70 [Enum.SortOrder.LayoutOrder]
      252 SETTABLEKS                       R25 R24 K63 ["SortOrder"]
      254 GETIMPORT                        R25 K72 [Enum.FillDirection.Horizontal]
      256 SETTABLEKS                       R25 R24 K64 ["FillDirection"]
      258 GETIMPORT                        R25 K74 [Enum.HorizontalAlignment.Center]
      260 SETTABLEKS                       R25 R24 K65 ["HorizontalAlignment"]
      262 GETIMPORT                        R25 K75 [Enum.VerticalAlignment.Center]
      264 SETTABLEKS                       R25 R24 K66 ["VerticalAlignment"]
      266 GETIMPORT                        R25 K77 [UDim.new]
      268 LOADN                            R26 0
      269 GETUPVAL                         R27 1
      270 GETTABLEKS                       R27 R27 K78 ["TAB_INNER_PADDING"]
      272 CALL                             R25 2 1
      273 SETTABLEKS                       R25 R24 K67 ["Padding"]
      275 CALL                             R22 2 1
      276 SETTABLEKS                       R22 R21 K59 ["Layout"]
      278 GETUPVAL                         R22 2
      279 GETTABLEKS                       R22 R22 K23 ["createElement"]
      281 LOADK                            R23 K79 ["ImageLabel"]
      282 DUPTABLE                         R24 K81 [{["LayoutOrder"] = 1, ["Size"], ["BackgroundTransparency"] = 1, ["ImageColor3"], ["Image"]}]
      283 GETIMPORT                        R25 K27 [UDim2.new]
      285 LOADN                            R26 0
      286 GETUPVAL                         R27 1
      287 GETTABLEKS                       R27 R27 K82 ["TAB_ICON_SIZE"]
      289 LOADN                            R28 0
      290 GETUPVAL                         R29 1
      291 GETTABLEKS                       R29 R29 K82 ["TAB_ICON_SIZE"]
      293 CALL                             R25 4 1
      294 SETTABLEKS                       R25 R24 K29 ["Size"]
      296 SETTABLEKS                       R12 R24 K80 ["ImageColor3"]
      298 SETTABLEKS                       R3 R24 K4 ["Image"]
      300 CALL                             R22 2 1
      301 SETTABLEKS                       R22 R21 K60 ["Icon"]
      303 MOVE                             R22 R9
      304 JUMPIFNOT                        R22 ; [+38]
      305 GETUPVAL                         R22 2
      306 GETTABLEKS                       R22 R22 K23 ["createElement"]
      308 LOADK                            R23 K83 ["TextLabel"]
      309 DUPTABLE                         R24 K90 [{["LayoutOrder"] = 2, ["Text"], ["Font"], ["TextSize"], ["BackgroundTransparency"] = 1, ["TextColor3"], ["Size"], ["TextXAlignment"], ["ClipsDescendants"] = True}]
      310 SETTABLEKS                       R2 R24 K3 ["Text"]
      312 JUMPIFNOT                        R5 ; [+4]
      313 GETUPVAL                         R25 1
      314 GETTABLEKS                       R25 R25 K15 ["FONT_BOLD"]
      316 JUMPIF                           R25 ; [+3]
      317 GETUPVAL                         R25 1
      318 GETTABLEKS                       R25 R25 K91 ["FONT"]
      320 SETTABLEKS                       R25 R24 K84 ["Font"]
      322 GETUPVAL                         R25 1
      323 GETTABLEKS                       R25 R25 K92 ["FONT_SIZE_MEDIUM"]
      325 SETTABLEKS                       R25 R24 K85 ["TextSize"]
      327 SETTABLEKS                       R12 R24 K86 ["TextColor3"]
      329 GETIMPORT                        R25 K27 [UDim2.new]
      331 LOADN                            R26 0
      332 MOVE                             R27 R11
      333 LOADN                            R28 1
      334 LOADN                            R29 0
      335 CALL                             R25 4 1
      336 SETTABLEKS                       R25 R24 K29 ["Size"]
      338 GETIMPORT                        R25 K94 [Enum.TextXAlignment.Left]
      340 SETTABLEKS                       R25 R24 K87 ["TextXAlignment"]
      342 CALL                             R22 2 1
      343 SETTABLEKS                       R22 R21 K3 ["Text"]
      345 CALL                             R18 3 1
      346 SETTABLEKS                       R18 R17 K47 ["Content"]
      348 CALL                             R14 3 -1
      349 RETURN                           R14 -1

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
