PROTO_0:
        0 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["props"]
        3 GETTABLEKS                       R0 R1 K1 ["Disabled"]
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R2 R3 K0 ["props"]
        8 GETTABLEKS                       R1 R2 K2 ["Key"]
       10 GETUPVAL                         R4 0
       11 GETTABLEKS                       R3 R4 K0 ["props"]
       13 GETTABLEKS                       R2 R3 K3 ["OnClick"]
       15 JUMPIF                           R0 ; [+3]
       16 MOVE                             R3 R2
       17 MOVE                             R4 R1
       18 CALL                             R3 1 0
       19 RETURN                           R0 0

PROTO_2:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          VAL R0
        2 SETTABLEKS                       R1 R0 K0 ["onClick"]
        4 RETURN                           R0 0

PROTO_3:
        0 GETTABLEKS                       R2 R0 K0 ["props"]
        2 GETTABLEKS                       R1 R2 K1 ["AutomaticSize"]
        4 GETTABLEKS                       R3 R0 K0 ["props"]
        6 GETTABLEKS                       R2 R3 K2 ["Description"]
        8 GETTABLEKS                       R4 R0 K0 ["props"]
       10 GETTABLEKS                       R3 R4 K3 ["LinkProps"]
       12 GETTABLEKS                       R5 R0 K0 ["props"]
       14 GETTABLEKS                       R4 R5 K4 ["Selected"]
       16 GETTABLEKS                       R6 R0 K0 ["props"]
       18 GETTABLEKS                       R5 R6 K5 ["Disabled"]
       20 GETTABLEKS                       R7 R0 K0 ["props"]
       22 GETTABLEKS                       R6 R7 K6 ["LayoutOrder"]
       24 GETTABLEKS                       R8 R0 K0 ["props"]
       26 GETTABLEKS                       R7 R8 K7 ["Size"]
       28 GETTABLEKS                       R9 R0 K0 ["props"]
       30 GETTABLEKS                       R8 R9 K8 ["Text"]
       32 GETTABLEKS                       R10 R0 K0 ["props"]
       34 GETTABLEKS                       R9 R10 K9 ["Stylizer"]
       36 GETUPVAL                         R10 0
       37 GETTABLEKS                       R12 R0 K0 ["props"]
       39 GETTABLEKS                       R11 R12 K10 ["TextWrapped"]
       41 GETTABLEKS                       R12 R9 K10 ["TextWrapped"]
       43 CALL                             R10 2 1
       44 GETUPVAL                         R11 0
       45 GETTABLEKS                       R13 R0 K0 ["props"]
       47 GETTABLEKS                       R12 R13 K11 ["TextXAlignment"]
       49 GETTABLEKS                       R13 R9 K11 ["TextXAlignment"]
       51 CALL                             R11 2 1
       52 GETUPVAL                         R12 0
       53 GETTABLEKS                       R14 R0 K0 ["props"]
       55 GETTABLEKS                       R13 R14 K12 ["VerticalAlignment"]
       57 GETTABLEKS                       R14 R9 K12 ["VerticalAlignment"]
       59 CALL                             R12 2 1
       60 GETTABLEKS                       R13 R9 K13 ["Font"]
       62 LOADNIL                          R14
       63 GETUPVAL                         R15 0
       64 GETTABLEKS                       R17 R0 K0 ["props"]
       66 GETTABLEKS                       R16 R17 K14 ["TextSize"]
       68 GETTABLEKS                       R17 R9 K14 ["TextSize"]
       70 CALL                             R15 2 1
       71 FASTCALL1                        TYPEOF R15 ; [+3]
       72 MOVE                             R17 R15
       73 GETIMPORT                        R16 K16 [typeof]
       75 CALL                             R16 1 1
       76 JUMPIFNOTEQKS                    R16 K17 ["table"] ; [+13]
       78 GETTABLEKS                       R17 R0 K0 ["props"]
       80 GETTABLEKS                       R16 R17 K14 ["TextSize"]
       82 GETTABLEKS                       R15 R16 K18 ["MainText"]
       84 GETTABLEKS                       R17 R0 K0 ["props"]
       86 GETTABLEKS                       R16 R17 K14 ["TextSize"]
       88 GETTABLEKS                       R14 R16 K2 ["Description"]
       90 GETTABLEKS                       R16 R9 K19 ["ImageSize"]
       92 GETTABLEKS                       R18 R9 K21 ["Padding"]
       94 ORK                              R17 R18 K20 [0]
       95 LOADNIL                          R18
       96 JUMPIFNOT                        R13 ; [+10]
       97 GETUPVAL                         R19 1
       98 MOVE                             R21 R8
       99 MOVE                             R22 R15
      100 MOVE                             R23 R13
      101 GETUPVAL                         R24 2
      102 NAMECALL                         R19 R19 K22 ["GetTextSize"]
      104 CALL                             R19 5 1
      105 MOVE                             R18 R19
      106 JUMP                             ; [+4]
      107 GETIMPORT                        R19 K25 [Vector2.new]
      109 CALL                             R19 0 1
      110 MOVE                             R18 R19
      111 LOADNIL                          R19
      112 JUMPIFNOT                        R2 ; [+17]
      113 JUMPIFNOT                        R14 ; [+16]
      114 JUMPIFNOT                        R13 ; [+10]
      115 GETUPVAL                         R20 1
      116 MOVE                             R22 R2
      117 MOVE                             R23 R14
      118 MOVE                             R24 R13
      119 GETUPVAL                         R25 2
      120 NAMECALL                         R20 R20 K22 ["GetTextSize"]
      122 CALL                             R20 5 1
      123 MOVE                             R19 R20
      124 JUMP                             ; [+21]
      125 GETIMPORT                        R20 K25 [Vector2.new]
      127 CALL                             R20 0 1
      128 MOVE                             R19 R20
      129 JUMP                             ; [+16]
      130 JUMPIFNOT                        R2 ; [+15]
      131 JUMPIFNOT                        R13 ; [+10]
      132 GETUPVAL                         R20 1
      133 MOVE                             R22 R2
      134 MOVE                             R23 R15
      135 MOVE                             R24 R13
      136 GETUPVAL                         R25 2
      137 NAMECALL                         R20 R20 K22 ["GetTextSize"]
      139 CALL                             R20 5 1
      140 MOVE                             R19 R20
      141 JUMP                             ; [+4]
      142 GETIMPORT                        R20 K25 [Vector2.new]
      144 CALL                             R20 0 1
      145 MOVE                             R19 R20
      146 GETTABLEKS                       R21 R18 K26 ["X"]
      148 ADD                              R20 R21 R17
      149 GETTABLEKS                       R21 R18 K27 ["Y"]
      151 JUMPIFNOT                        R19 ; [+6]
      152 GETTABLEKS                       R22 R19 K26 ["X"]
      154 ADD                              R20 R21 R22
      155 GETTABLEKS                       R22 R19 K27 ["Y"]
      157 ADD                              R21 R21 R22
      158 JUMPIFNOT                        R16 ; [+16]
      159 GETTABLEKS                       R23 R16 K26 ["X"]
      161 GETTABLEKS                       R22 R23 K28 ["Offset"]
      163 ADD                              R20 R20 R22
      164 GETTABLEKS                       R24 R16 K27 ["Y"]
      166 GETTABLEKS                       R23 R24 K28 ["Offset"]
      168 FASTCALL2                        MATH_MAX R23 R21 ; [+4]
      170 MOVE                             R24 R21
      171 GETIMPORT                        R22 K31 [math.max]
      173 CALL                             R22 2 1
      174 MOVE                             R21 R22
      175 LOADNIL                          R22
      176 LOADNIL                          R23
      177 LOADNIL                          R24
      178 JUMPIFEQKNIL                     R1 ; [+5]
      180 MOVE                             R22 R7
      181 MOVE                             R23 R7
      182 MOVE                             R24 R7
      183 JUMP                             ; [+31]
      184 GETIMPORT                        R25 K33 [UDim2.new]
      186 LOADN                            R26 0
      187 MOVE                             R27 R20
      188 LOADN                            R28 0
      189 MOVE                             R29 R21
      190 CALL                             R25 4 1
      191 MOVE                             R22 R25
      192 JUMPIFNOT                        R19 ; [+11]
      193 GETIMPORT                        R25 K33 [UDim2.new]
      195 LOADN                            R26 0
      196 GETTABLEKS                       R27 R19 K26 ["X"]
      198 LOADN                            R28 0
      199 GETTABLEKS                       R29 R19 K27 ["Y"]
      201 CALL                             R25 4 1
      202 MOVE                             R23 R25
      203 JUMP                             ; [+1]
      204 LOADNIL                          R23
      205 GETIMPORT                        R25 K33 [UDim2.new]
      207 LOADN                            R26 0
      208 GETTABLEKS                       R27 R18 K26 ["X"]
      210 LOADN                            R28 0
      211 GETTABLEKS                       R29 R18 K27 ["Y"]
      213 CALL                             R25 4 1
      214 MOVE                             R24 R25
      215 LOADNIL                          R25
      216 JUMPIFNOT                        R5 ; [+5]
      217 JUMPIFNOT                        R4 ; [+4]
      218 GETUPVAL                         R26 3
      219 GETTABLEKS                       R25 R26 K34 ["Indeterminate"]
      221 JUMP                             ; [+9]
      222 JUMPIFNOT                        R5 ; [+4]
      223 GETUPVAL                         R26 3
      224 GETTABLEKS                       R25 R26 K5 ["Disabled"]
      226 JUMP                             ; [+4]
      227 JUMPIFNOT                        R4 ; [+3]
      228 GETUPVAL                         R26 3
      229 GETTABLEKS                       R25 R26 K4 ["Selected"]
      231 GETUPVAL                         R27 4
      232 GETTABLEKS                       R26 R27 K35 ["createElement"]
      234 LOADK                            R27 K36 ["TextButton"]
      235 NEWTABLE                         R28 8 0
      237 SETTABLEKS                       R1 R28 K1 ["AutomaticSize"]
      239 LOADN                            R29 1
      240 SETTABLEKS                       R29 R28 K37 ["BackgroundTransparency"]
      242 SETTABLEKS                       R6 R28 K6 ["LayoutOrder"]
      244 SETTABLEKS                       R22 R28 K7 ["Size"]
      246 LOADK                            R29 K38 [""]
      247 SETTABLEKS                       R29 R28 K8 ["Text"]
      249 GETUPVAL                         R31 4
      250 GETTABLEKS                       R30 R31 K39 ["Event"]
      252 GETTABLEKS                       R29 R30 K40 ["Activated"]
      254 GETTABLEKS                       R30 R0 K41 ["onClick"]
      256 SETTABLE                         R30 R28 R29
      257 DUPTABLE                         R29 K45 [{"UIListLayout", "RadioImage", "TextFrame"}]
      258 GETUPVAL                         R31 4
      259 GETTABLEKS                       R30 R31 K35 ["createElement"]
      261 LOADK                            R31 K42 ["UIListLayout"]
      262 DUPTABLE                         R32 K48 [{"FillDirection", "Padding", "SortOrder", "VerticalAlignment"}]
      263 GETIMPORT                        R33 K51 [Enum.FillDirection.Horizontal]
      265 SETTABLEKS                       R33 R32 K46 ["FillDirection"]
      267 GETIMPORT                        R33 K53 [UDim.new]
      269 LOADN                            R34 0
      270 GETTABLEKS                       R35 R9 K21 ["Padding"]
      272 CALL                             R33 2 1
      273 SETTABLEKS                       R33 R32 K21 ["Padding"]
      275 GETIMPORT                        R33 K54 [Enum.SortOrder.LayoutOrder]
      277 SETTABLEKS                       R33 R32 K47 ["SortOrder"]
      279 SETTABLEKS                       R12 R32 K12 ["VerticalAlignment"]
      281 CALL                             R30 2 1
      282 SETTABLEKS                       R30 R29 K42 ["UIListLayout"]
      284 GETUPVAL                         R31 4
      285 GETTABLEKS                       R30 R31 K35 ["createElement"]
      287 GETUPVAL                         R31 5
      288 DUPTABLE                         R32 K58 [{"LayoutOrder", "OnClick", "Size", "Style", "StyleModifier"}]
      289 LOADN                            R33 1
      290 SETTABLEKS                       R33 R32 K6 ["LayoutOrder"]
      292 GETTABLEKS                       R33 R0 K41 ["onClick"]
      294 SETTABLEKS                       R33 R32 K55 ["OnClick"]
      296 GETTABLEKS                       R33 R9 K19 ["ImageSize"]
      298 SETTABLEKS                       R33 R32 K7 ["Size"]
      300 GETTABLEKS                       R33 R9 K59 ["BackgroundStyle"]
      302 SETTABLEKS                       R33 R32 K56 ["Style"]
      304 SETTABLEKS                       R25 R32 K57 ["StyleModifier"]
      306 CALL                             R30 2 1
      307 SETTABLEKS                       R30 R29 K43 ["RadioImage"]
      309 GETUPVAL                         R31 4
      310 GETTABLEKS                       R30 R31 K35 ["createElement"]
      312 GETUPVAL                         R31 6
      313 DUPTABLE                         R32 K62 [{"AutomaticSize", "HorizontalAlignment", "Layout", "LayoutOrder"}]
      314 GETIMPORT                        R33 K63 [Enum.AutomaticSize.Y]
      316 SETTABLEKS                       R33 R32 K1 ["AutomaticSize"]
      318 GETIMPORT                        R33 K65 [Enum.HorizontalAlignment.Left]
      320 SETTABLEKS                       R33 R32 K60 ["HorizontalAlignment"]
      322 GETIMPORT                        R33 K67 [Enum.FillDirection.Vertical]
      324 SETTABLEKS                       R33 R32 K61 ["Layout"]
      326 LOADN                            R33 2
      327 SETTABLEKS                       R33 R32 K6 ["LayoutOrder"]
      329 DUPTABLE                         R33 K71 [{"MainTextLabel", "DescriptionTextLabel", "LinkText"}]
      330 GETUPVAL                         R35 4
      331 GETTABLEKS                       R34 R35 K35 ["createElement"]
      333 GETUPVAL                         R35 7
      334 DUPTABLE                         R36 K73 [{"AutomaticSize", "LayoutOrder", "Size", "TextTransparency", "Text", "TextSize", "TextWrapped", "TextXAlignment"}]
      335 SETTABLEKS                       R1 R36 K1 ["AutomaticSize"]
      337 LOADN                            R37 1
      338 SETTABLEKS                       R37 R36 K6 ["LayoutOrder"]
      340 SETTABLEKS                       R24 R36 K7 ["Size"]
      342 JUMPIFNOT                        R5 ; [+2]
      343 LOADK                            R37 K74 [0.5]
      344 JUMP                             ; [+1]
      345 LOADN                            R37 0
      346 SETTABLEKS                       R37 R36 K72 ["TextTransparency"]
      348 SETTABLEKS                       R8 R36 K8 ["Text"]
      350 SETTABLEKS                       R15 R36 K14 ["TextSize"]
      352 SETTABLEKS                       R10 R36 K10 ["TextWrapped"]
      354 SETTABLEKS                       R11 R36 K11 ["TextXAlignment"]
      356 DUPTABLE                         R37 K76 [{"Tooltip"}]
      357 GETTABLEKS                       R40 R0 K0 ["props"]
      359 GETTABLEKS                       R39 R40 K75 ["Tooltip"]
      361 JUMPIFNOT                        R39 ; [+13]
      362 GETUPVAL                         R39 4
      363 GETTABLEKS                       R38 R39 K35 ["createElement"]
      365 GETUPVAL                         R39 8
      366 DUPTABLE                         R40 K77 [{"Text"}]
      367 GETTABLEKS                       R42 R0 K0 ["props"]
      369 GETTABLEKS                       R41 R42 K75 ["Tooltip"]
      371 SETTABLEKS                       R41 R40 K8 ["Text"]
      373 CALL                             R38 2 1
      374 JUMP                             ; [+1]
      375 LOADNIL                          R38
      376 SETTABLEKS                       R38 R37 K75 ["Tooltip"]
      378 CALL                             R34 3 1
      379 SETTABLEKS                       R34 R33 K68 ["MainTextLabel"]
      381 MOVE                             R34 R2
      382 JUMPIFNOT                        R34 ; [+27]
      383 GETUPVAL                         R35 4
      384 GETTABLEKS                       R34 R35 K35 ["createElement"]
      386 GETUPVAL                         R35 7
      387 DUPTABLE                         R36 K78 [{"AutomaticSize", "LayoutOrder", "Size", "StyleModifier", "Text", "TextSize", "TextWrapped", "TextXAlignment"}]
      388 SETTABLEKS                       R1 R36 K1 ["AutomaticSize"]
      390 LOADN                            R37 2
      391 SETTABLEKS                       R37 R36 K6 ["LayoutOrder"]
      393 SETTABLEKS                       R23 R36 K7 ["Size"]
      395 GETUPVAL                         R38 3
      396 GETTABLEKS                       R37 R38 K5 ["Disabled"]
      398 SETTABLEKS                       R37 R36 K57 ["StyleModifier"]
      400 SETTABLEKS                       R2 R36 K8 ["Text"]
      402 ORK                              R37 R14 K79 []
      403 SETTABLEKS                       R37 R36 K14 ["TextSize"]
      405 SETTABLEKS                       R10 R36 K10 ["TextWrapped"]
      407 SETTABLEKS                       R11 R36 K11 ["TextXAlignment"]
      409 CALL                             R34 2 1
      410 SETTABLEKS                       R34 R33 K69 ["DescriptionTextLabel"]
      412 JUMPIFNOT                        R3 ; [+22]
      413 GETUPVAL                         R35 4
      414 GETTABLEKS                       R34 R35 K35 ["createElement"]
      416 GETUPVAL                         R35 9
      417 GETUPVAL                         R36 10
      418 DUPTABLE                         R37 K80 [{"LayoutOrder", "StyleModifier", "TextXAlignment", "Size"}]
      419 LOADN                            R38 3
      420 SETTABLEKS                       R38 R37 K6 ["LayoutOrder"]
      422 GETUPVAL                         R39 3
      423 GETTABLEKS                       R38 R39 K5 ["Disabled"]
      425 SETTABLEKS                       R38 R37 K57 ["StyleModifier"]
      427 SETTABLEKS                       R11 R37 K11 ["TextXAlignment"]
      429 SETTABLEKS                       R23 R37 K7 ["Size"]
      431 MOVE                             R38 R3
      432 CALL                             R36 2 -1
      433 CALL                             R34 -1 1
      434 JUMP                             ; [+1]
      435 LOADNIL                          R34
      436 SETTABLEKS                       R34 R33 K70 ["LinkText"]
      438 CALL                             R30 3 1
      439 SETTABLEKS                       R30 R29 K44 ["TextFrame"]
      441 CALL                             R26 3 -1
      442 RETURN                           R26 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["TextService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R2 K5 [script]
        9 LOADK                            R4 K6 ["UI"]
       10 NAMECALL                         R2 R2 K7 ["FindFirstAncestor"]
       12 CALL                             R2 2 1
       13 GETTABLEKS                       R1 R2 K8 ["Parent"]
       15 GETIMPORT                        R2 K10 [require]
       17 GETTABLEKS                       R4 R1 K8 ["Parent"]
       19 GETTABLEKS                       R3 R4 K11 ["Roact"]
       21 CALL                             R2 1 1
       22 GETIMPORT                        R3 K10 [require]
       24 GETTABLEKS                       R5 R1 K6 ["UI"]
       26 GETTABLEKS                       R4 R5 K12 ["ContextServices"]
       28 CALL                             R3 1 1
       29 GETTABLEKS                       R4 R3 K13 ["withContext"]
       31 GETIMPORT                        R5 K10 [require]
       33 GETTABLEKS                       R8 R1 K6 ["UI"]
       35 GETTABLEKS                       R7 R8 K14 ["Components"]
       37 GETTABLEKS                       R6 R7 K15 ["DEPRECATED_Button"]
       39 CALL                             R5 1 1
       40 GETIMPORT                        R6 K10 [require]
       42 GETTABLEKS                       R9 R1 K6 ["UI"]
       44 GETTABLEKS                       R8 R9 K14 ["Components"]
       46 GETTABLEKS                       R7 R8 K16 ["Pane"]
       48 CALL                             R6 1 1
       49 GETIMPORT                        R7 K10 [require]
       51 GETTABLEKS                       R10 R1 K6 ["UI"]
       53 GETTABLEKS                       R9 R10 K14 ["Components"]
       55 GETTABLEKS                       R8 R9 K17 ["TextLabel"]
       57 CALL                             R7 1 1
       58 GETIMPORT                        R8 K10 [require]
       60 GETTABLEKS                       R11 R1 K6 ["UI"]
       62 GETTABLEKS                       R10 R11 K14 ["Components"]
       64 GETTABLEKS                       R9 R10 K18 ["LinkText"]
       66 CALL                             R8 1 1
       67 GETIMPORT                        R9 K10 [require]
       69 GETTABLEKS                       R12 R1 K6 ["UI"]
       71 GETTABLEKS                       R11 R12 K14 ["Components"]
       73 GETTABLEKS                       R10 R11 K19 ["Tooltip"]
       75 CALL                             R9 1 1
       76 GETIMPORT                        R10 K10 [require]
       78 GETTABLEKS                       R12 R1 K20 ["Util"]
       80 GETTABLEKS                       R11 R12 K21 ["prioritize"]
       82 CALL                             R10 1 1
       83 GETIMPORT                        R11 K10 [require]
       85 GETTABLEKS                       R13 R1 K20 ["Util"]
       87 GETTABLEKS                       R12 R13 K22 ["Typecheck"]
       89 CALL                             R11 1 1
       90 GETIMPORT                        R12 K10 [require]
       92 GETTABLEKS                       R14 R1 K20 ["Util"]
       94 GETTABLEKS                       R13 R14 K23 ["StyleModifier"]
       96 CALL                             R12 1 1
       97 GETIMPORT                        R13 K10 [require]
       99 GETTABLEKS                       R15 R1 K8 ["Parent"]
      101 GETTABLEKS                       R14 R15 K24 ["Dash"]
      103 CALL                             R13 1 1
      104 GETTABLEKS                       R14 R13 K25 ["join"]
      106 GETTABLEKS                       R15 R2 K26 ["PureComponent"]
      108 LOADK                            R17 K27 ["RadioButton"]
      109 NAMECALL                         R15 R15 K28 ["extend"]
      111 CALL                             R15 2 1
      112 GETTABLEKS                       R16 R11 K29 ["wrap"]
      114 MOVE                             R17 R15
      115 GETIMPORT                        R18 K5 [script]
      117 CALL                             R16 2 0
      118 GETIMPORT                        R16 K32 [Vector2.new]
      120 LOADK                            R17 K33 [1000000]
      121 LOADN                            R18 50
      122 CALL                             R16 2 1
      123 DUPTABLE                         R17 K38 [{"Disabled", "Selected", "OnClick", "VerticalAlignment"}]
      124 LOADB                            R18 0
      125 SETTABLEKS                       R18 R17 K34 ["Disabled"]
      127 LOADB                            R18 0
      128 SETTABLEKS                       R18 R17 K35 ["Selected"]
      130 DUPCLOSURE                       R18 K39 [PROTO_0]
      131 SETTABLEKS                       R18 R17 K36 ["OnClick"]
      133 GETIMPORT                        R18 K42 [Enum.VerticalAlignment.Center]
      135 SETTABLEKS                       R18 R17 K37 ["VerticalAlignment"]
      137 SETTABLEKS                       R17 R15 K43 ["defaultProps"]
      139 DUPCLOSURE                       R17 K44 [PROTO_2]
      140 SETTABLEKS                       R17 R15 K45 ["init"]
      142 DUPCLOSURE                       R17 K46 [PROTO_3]
      143 CAPTURE                          VAL R10
      144 CAPTURE                          VAL R0
      145 CAPTURE                          VAL R16
      146 CAPTURE                          VAL R12
      147 CAPTURE                          VAL R2
      148 CAPTURE                          VAL R5
      149 CAPTURE                          VAL R6
      150 CAPTURE                          VAL R7
      151 CAPTURE                          VAL R9
      152 CAPTURE                          VAL R8
      153 CAPTURE                          VAL R14
      154 SETTABLEKS                       R17 R15 K47 ["render"]
      156 MOVE                             R17 R4
      157 DUPTABLE                         R18 K49 [{"Stylizer"}]
      158 GETTABLEKS                       R19 R3 K48 ["Stylizer"]
      160 SETTABLEKS                       R19 R18 K48 ["Stylizer"]
      162 CALL                             R17 1 1
      163 MOVE                             R18 R15
      164 CALL                             R17 1 1
      165 MOVE                             R15 R17
      166 RETURN                           R15 1
