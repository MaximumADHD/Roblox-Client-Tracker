PROTO_0:
        0 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R0 R0 K1 ["Disabled"]
        5 GETUPVAL                         R1 0
        6 GETTABLEKS                       R1 R1 K0 ["props"]
        8 GETTABLEKS                       R1 R1 K2 ["Key"]
       10 GETUPVAL                         R2 0
       11 GETTABLEKS                       R2 R2 K0 ["props"]
       13 GETTABLEKS                       R2 R2 K3 ["OnClick"]
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
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R1 R1 K1 ["AutomaticSize"]
        4 GETTABLEKS                       R2 R0 K0 ["props"]
        6 GETTABLEKS                       R2 R2 K2 ["Description"]
        8 GETTABLEKS                       R3 R0 K0 ["props"]
       10 GETTABLEKS                       R3 R3 K3 ["LinkProps"]
       12 GETTABLEKS                       R4 R0 K0 ["props"]
       14 GETTABLEKS                       R4 R4 K4 ["Selected"]
       16 GETTABLEKS                       R5 R0 K0 ["props"]
       18 GETTABLEKS                       R5 R5 K5 ["Disabled"]
       20 GETTABLEKS                       R6 R0 K0 ["props"]
       22 GETTABLEKS                       R6 R6 K6 ["LayoutOrder"]
       24 GETTABLEKS                       R7 R0 K0 ["props"]
       26 GETTABLEKS                       R7 R7 K7 ["Size"]
       28 GETTABLEKS                       R8 R0 K0 ["props"]
       30 GETTABLEKS                       R8 R8 K8 ["Text"]
       32 GETTABLEKS                       R9 R0 K0 ["props"]
       34 GETTABLEKS                       R9 R9 K9 ["Stylizer"]
       36 GETUPVAL                         R10 0
       37 GETTABLEKS                       R11 R0 K0 ["props"]
       39 GETTABLEKS                       R11 R11 K10 ["TextWrapped"]
       41 GETTABLEKS                       R12 R9 K10 ["TextWrapped"]
       43 CALL                             R10 2 1
       44 GETUPVAL                         R11 0
       45 GETTABLEKS                       R12 R0 K0 ["props"]
       47 GETTABLEKS                       R12 R12 K11 ["TextXAlignment"]
       49 GETTABLEKS                       R13 R9 K11 ["TextXAlignment"]
       51 CALL                             R11 2 1
       52 GETUPVAL                         R12 0
       53 GETTABLEKS                       R13 R0 K0 ["props"]
       55 GETTABLEKS                       R13 R13 K12 ["VerticalAlignment"]
       57 GETTABLEKS                       R14 R9 K12 ["VerticalAlignment"]
       59 CALL                             R12 2 1
       60 GETTABLEKS                       R13 R9 K13 ["Font"]
       62 LOADNIL                          R14
       63 GETUPVAL                         R15 0
       64 GETTABLEKS                       R16 R0 K0 ["props"]
       66 GETTABLEKS                       R16 R16 K14 ["TextSize"]
       68 GETTABLEKS                       R17 R9 K14 ["TextSize"]
       70 CALL                             R15 2 1
       71 FASTCALL1                        TYPEOF R15 ; [+3]
       72 MOVE                             R17 R15
       73 GETIMPORT                        R16 K16 [typeof]
       75 CALL                             R16 1 1
       76 JUMPIFNOTEQKS                    R16 K17 ["table"] ; [+13]
       78 GETTABLEKS                       R16 R0 K0 ["props"]
       80 GETTABLEKS                       R16 R16 K14 ["TextSize"]
       82 GETTABLEKS                       R15 R16 K18 ["MainText"]
       84 GETTABLEKS                       R16 R0 K0 ["props"]
       86 GETTABLEKS                       R16 R16 K14 ["TextSize"]
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
      159 GETTABLEKS                       R22 R16 K26 ["X"]
      161 GETTABLEKS                       R22 R22 K28 ["Offset"]
      163 ADD                              R20 R20 R22
      164 GETTABLEKS                       R23 R16 K27 ["Y"]
      166 GETTABLEKS                       R23 R23 K28 ["Offset"]
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
      231 GETUPVAL                         R26 4
      232 GETTABLEKS                       R26 R26 K35 ["createElement"]
      234 LOADK                            R27 K36 ["TextButton"]
      235 NEWTABLE                         R28 8 0
      237 SETTABLEKS                       R1 R28 K1 ["AutomaticSize"]
      239 LOADN                            R29 1
      240 SETTABLEKS                       R29 R28 K37 ["BackgroundTransparency"]
      242 SETTABLEKS                       R6 R28 K6 ["LayoutOrder"]
      244 SETTABLEKS                       R22 R28 K7 ["Size"]
      246 GETUPVAL                         R30 5
      247 CALL                             R30 0 1
      248 JUMPIFNOT                        R30 ; [+2]
      249 LOADB                            R29 0
      250 JUMP                             ; [+1]
      251 LOADNIL                          R29
      252 SETTABLEKS                       R29 R28 K38 ["Selectable"]
      254 LOADK                            R29 K39 [""]
      255 SETTABLEKS                       R29 R28 K8 ["Text"]
      257 GETUPVAL                         R29 4
      258 GETTABLEKS                       R29 R29 K40 ["Event"]
      260 GETTABLEKS                       R29 R29 K41 ["Activated"]
      262 GETTABLEKS                       R30 R0 K42 ["onClick"]
      264 SETTABLE                         R30 R28 R29
      265 DUPTABLE                         R29 K46 [{"UIListLayout", "RadioImage", "TextFrame"}]
      266 GETUPVAL                         R30 4
      267 GETTABLEKS                       R30 R30 K35 ["createElement"]
      269 LOADK                            R31 K43 ["UIListLayout"]
      270 DUPTABLE                         R32 K49 [{"FillDirection", "Padding", "SortOrder", "VerticalAlignment"}]
      271 GETIMPORT                        R33 K52 [Enum.FillDirection.Horizontal]
      273 SETTABLEKS                       R33 R32 K47 ["FillDirection"]
      275 GETIMPORT                        R33 K54 [UDim.new]
      277 LOADN                            R34 0
      278 GETTABLEKS                       R35 R9 K21 ["Padding"]
      280 CALL                             R33 2 1
      281 SETTABLEKS                       R33 R32 K21 ["Padding"]
      283 GETIMPORT                        R33 K55 [Enum.SortOrder.LayoutOrder]
      285 SETTABLEKS                       R33 R32 K48 ["SortOrder"]
      287 SETTABLEKS                       R12 R32 K12 ["VerticalAlignment"]
      289 CALL                             R30 2 1
      290 SETTABLEKS                       R30 R29 K43 ["UIListLayout"]
      292 GETUPVAL                         R30 4
      293 GETTABLEKS                       R30 R30 K35 ["createElement"]
      295 GETUPVAL                         R31 6
      296 DUPTABLE                         R32 K60 [{["LayoutOrder"] = 1, ["OnClick"], ["Size"], ["Style"], ["StyleModifier"]}]
      297 GETTABLEKS                       R33 R0 K42 ["onClick"]
      299 SETTABLEKS                       R33 R32 K57 ["OnClick"]
      301 GETTABLEKS                       R33 R9 K19 ["ImageSize"]
      303 SETTABLEKS                       R33 R32 K7 ["Size"]
      305 GETTABLEKS                       R33 R9 K61 ["BackgroundStyle"]
      307 SETTABLEKS                       R33 R32 K58 ["Style"]
      309 SETTABLEKS                       R25 R32 K59 ["StyleModifier"]
      311 CALL                             R30 2 1
      312 SETTABLEKS                       R30 R29 K44 ["RadioImage"]
      314 GETUPVAL                         R30 4
      315 GETTABLEKS                       R30 R30 K35 ["createElement"]
      317 GETUPVAL                         R31 7
      318 DUPTABLE                         R32 K65 [{["AutomaticSize"], ["HorizontalAlignment"], ["Layout"], ["LayoutOrder"] = 2}]
      319 GETIMPORT                        R33 K66 [Enum.AutomaticSize.Y]
      321 SETTABLEKS                       R33 R32 K1 ["AutomaticSize"]
      323 GETIMPORT                        R33 K68 [Enum.HorizontalAlignment.Left]
      325 SETTABLEKS                       R33 R32 K62 ["HorizontalAlignment"]
      327 GETIMPORT                        R33 K70 [Enum.FillDirection.Vertical]
      329 SETTABLEKS                       R33 R32 K63 ["Layout"]
      331 DUPTABLE                         R33 K74 [{"MainTextLabel", "DescriptionTextLabel", "LinkText"}]
      332 GETUPVAL                         R34 4
      333 GETTABLEKS                       R34 R34 K35 ["createElement"]
      335 GETUPVAL                         R35 8
      336 DUPTABLE                         R36 K76 [{["AutomaticSize"], ["LayoutOrder"] = 1, ["Size"], ["TextTransparency"], ["Text"], ["TextSize"], ["TextWrapped"], ["TextXAlignment"]}]
      337 SETTABLEKS                       R1 R36 K1 ["AutomaticSize"]
      339 SETTABLEKS                       R24 R36 K7 ["Size"]
      341 JUMPIFNOT                        R5 ; [+2]
      342 LOADK                            R37 K77 [0.5]
      343 JUMP                             ; [+1]
      344 LOADN                            R37 0
      345 SETTABLEKS                       R37 R36 K75 ["TextTransparency"]
      347 SETTABLEKS                       R8 R36 K8 ["Text"]
      349 SETTABLEKS                       R15 R36 K14 ["TextSize"]
      351 SETTABLEKS                       R10 R36 K10 ["TextWrapped"]
      353 SETTABLEKS                       R11 R36 K11 ["TextXAlignment"]
      355 DUPTABLE                         R37 K79 [{"Tooltip"}]
      356 GETTABLEKS                       R39 R0 K0 ["props"]
      358 GETTABLEKS                       R39 R39 K78 ["Tooltip"]
      360 JUMPIFNOT                        R39 ; [+13]
      361 GETUPVAL                         R38 4
      362 GETTABLEKS                       R38 R38 K35 ["createElement"]
      364 GETUPVAL                         R39 9
      365 DUPTABLE                         R40 K80 [{"Text"}]
      366 GETTABLEKS                       R41 R0 K0 ["props"]
      368 GETTABLEKS                       R41 R41 K78 ["Tooltip"]
      370 SETTABLEKS                       R41 R40 K8 ["Text"]
      372 CALL                             R38 2 1
      373 JUMP                             ; [+1]
      374 LOADNIL                          R38
      375 SETTABLEKS                       R38 R37 K78 ["Tooltip"]
      377 CALL                             R34 3 1
      378 SETTABLEKS                       R34 R33 K71 ["MainTextLabel"]
      380 MOVE                             R34 R2
      381 JUMPIFNOT                        R34 ; [+24]
      382 GETUPVAL                         R34 4
      383 GETTABLEKS                       R34 R34 K35 ["createElement"]
      385 GETUPVAL                         R35 8
      386 DUPTABLE                         R36 K81 [{["AutomaticSize"], ["LayoutOrder"] = 2, ["Size"], ["StyleModifier"], ["Text"], ["TextSize"], ["TextWrapped"], ["TextXAlignment"]}]
      387 SETTABLEKS                       R1 R36 K1 ["AutomaticSize"]
      389 SETTABLEKS                       R23 R36 K7 ["Size"]
      391 GETUPVAL                         R37 3
      392 GETTABLEKS                       R37 R37 K5 ["Disabled"]
      394 SETTABLEKS                       R37 R36 K59 ["StyleModifier"]
      396 SETTABLEKS                       R2 R36 K8 ["Text"]
      398 ORK                              R37 R14 K82 []
      399 SETTABLEKS                       R37 R36 K14 ["TextSize"]
      401 SETTABLEKS                       R10 R36 K10 ["TextWrapped"]
      403 SETTABLEKS                       R11 R36 K11 ["TextXAlignment"]
      405 CALL                             R34 2 1
      406 SETTABLEKS                       R34 R33 K72 ["DescriptionTextLabel"]
      408 JUMPIFNOT                        R3 ; [+19]
      409 GETUPVAL                         R34 4
      410 GETTABLEKS                       R34 R34 K35 ["createElement"]
      412 GETUPVAL                         R35 10
      413 GETUPVAL                         R36 11
      414 DUPTABLE                         R37 K84 [{["LayoutOrder"] = 3, ["StyleModifier"], ["TextXAlignment"], ["Size"]}]
      415 GETUPVAL                         R38 3
      416 GETTABLEKS                       R38 R38 K5 ["Disabled"]
      418 SETTABLEKS                       R38 R37 K59 ["StyleModifier"]
      420 SETTABLEKS                       R11 R37 K11 ["TextXAlignment"]
      422 SETTABLEKS                       R23 R37 K7 ["Size"]
      424 MOVE                             R38 R3
      425 CALL                             R36 2 -1
      426 CALL                             R34 -1 1
      427 JUMP                             ; [+1]
      428 LOADNIL                          R34
      429 SETTABLEKS                       R34 R33 K73 ["LinkText"]
      431 CALL                             R30 3 1
      432 SETTABLEKS                       R30 R29 K45 ["TextFrame"]
      434 CALL                             R26 3 -1
      435 RETURN                           R26 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["TextService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [script]
        9 LOADK                            R3 K6 ["UI"]
       10 NAMECALL                         R1 R1 K7 ["FindFirstAncestor"]
       12 CALL                             R1 2 1
       13 GETTABLEKS                       R1 R1 K8 ["Parent"]
       15 GETIMPORT                        R2 K10 [require]
       17 GETTABLEKS                       R3 R1 K8 ["Parent"]
       19 GETTABLEKS                       R3 R3 K11 ["Roact"]
       21 CALL                             R2 1 1
       22 GETIMPORT                        R3 K10 [require]
       24 GETTABLEKS                       R4 R1 K6 ["UI"]
       26 GETTABLEKS                       R4 R4 K12 ["ContextServices"]
       28 CALL                             R3 1 1
       29 GETTABLEKS                       R4 R3 K13 ["withContext"]
       31 GETIMPORT                        R5 K10 [require]
       33 GETTABLEKS                       R6 R1 K6 ["UI"]
       35 GETTABLEKS                       R6 R6 K14 ["Components"]
       37 GETTABLEKS                       R6 R6 K15 ["DEPRECATED_Button"]
       39 CALL                             R5 1 1
       40 GETIMPORT                        R6 K10 [require]
       42 GETTABLEKS                       R7 R1 K6 ["UI"]
       44 GETTABLEKS                       R7 R7 K14 ["Components"]
       46 GETTABLEKS                       R7 R7 K16 ["Pane"]
       48 CALL                             R6 1 1
       49 GETIMPORT                        R7 K10 [require]
       51 GETTABLEKS                       R8 R1 K6 ["UI"]
       53 GETTABLEKS                       R8 R8 K14 ["Components"]
       55 GETTABLEKS                       R8 R8 K17 ["TextLabel"]
       57 CALL                             R7 1 1
       58 GETIMPORT                        R8 K10 [require]
       60 GETTABLEKS                       R9 R1 K6 ["UI"]
       62 GETTABLEKS                       R9 R9 K14 ["Components"]
       64 GETTABLEKS                       R9 R9 K18 ["LinkText"]
       66 CALL                             R8 1 1
       67 GETIMPORT                        R9 K10 [require]
       69 GETTABLEKS                       R10 R1 K6 ["UI"]
       71 GETTABLEKS                       R10 R10 K14 ["Components"]
       73 GETTABLEKS                       R10 R10 K19 ["Tooltip"]
       75 CALL                             R9 1 1
       76 GETIMPORT                        R10 K10 [require]
       78 GETTABLEKS                       R11 R1 K20 ["Util"]
       80 GETTABLEKS                       R11 R11 K21 ["prioritize"]
       82 CALL                             R10 1 1
       83 GETIMPORT                        R11 K10 [require]
       85 GETTABLEKS                       R12 R1 K20 ["Util"]
       87 GETTABLEKS                       R12 R12 K22 ["Typecheck"]
       89 CALL                             R11 1 1
       90 GETIMPORT                        R12 K10 [require]
       92 GETTABLEKS                       R13 R1 K20 ["Util"]
       94 GETTABLEKS                       R13 R13 K23 ["StyleModifier"]
       96 CALL                             R12 1 1
       97 GETIMPORT                        R13 K10 [require]
       99 GETTABLEKS                       R14 R1 K24 ["SharedFlags"]
      101 GETTABLEKS                       R14 R14 K25 ["getFFlagDevFrameworkKeyboardNavComponentChanges"]
      103 CALL                             R13 1 1
      104 GETIMPORT                        R14 K10 [require]
      106 GETTABLEKS                       R15 R1 K8 ["Parent"]
      108 GETTABLEKS                       R15 R15 K26 ["Dash"]
      110 CALL                             R14 1 1
      111 GETTABLEKS                       R15 R14 K27 ["join"]
      113 GETTABLEKS                       R16 R2 K28 ["PureComponent"]
      115 LOADK                            R18 K29 ["RadioButton"]
      116 NAMECALL                         R16 R16 K30 ["extend"]
      118 CALL                             R16 2 1
      119 GETTABLEKS                       R17 R11 K31 ["wrap"]
      121 MOVE                             R18 R16
      122 GETIMPORT                        R19 K5 [script]
      124 CALL                             R17 2 0
      125 GETIMPORT                        R17 K34 [Vector2.new]
      127 LOADK                            R18 K35 [1000000]
      128 LOADN                            R19 50
      129 CALL                             R17 2 1
      130 DUPTABLE                         R18 K41 [{["Disabled"] = False, ["Selected"] = False, ["OnClick"], ["VerticalAlignment"]}]
      131 DUPCLOSURE                       R19 K42 [PROTO_0]
      132 SETTABLEKS                       R19 R18 K39 ["OnClick"]
      134 GETIMPORT                        R19 K45 [Enum.VerticalAlignment.Center]
      136 SETTABLEKS                       R19 R18 K40 ["VerticalAlignment"]
      138 SETTABLEKS                       R18 R16 K46 ["defaultProps"]
      140 DUPCLOSURE                       R18 K47 [PROTO_2]
      141 SETTABLEKS                       R18 R16 K48 ["init"]
      143 DUPCLOSURE                       R18 K49 [PROTO_3]
      144 CAPTURE                          VAL R10
      145 CAPTURE                          VAL R0
      146 CAPTURE                          VAL R17
      147 CAPTURE                          VAL R12
      148 CAPTURE                          VAL R2
      149 CAPTURE                          VAL R13
      150 CAPTURE                          VAL R5
      151 CAPTURE                          VAL R6
      152 CAPTURE                          VAL R7
      153 CAPTURE                          VAL R9
      154 CAPTURE                          VAL R8
      155 CAPTURE                          VAL R15
      156 SETTABLEKS                       R18 R16 K50 ["render"]
      158 MOVE                             R18 R4
      159 DUPTABLE                         R19 K52 [{"Stylizer"}]
      160 GETTABLEKS                       R20 R3 K51 ["Stylizer"]
      162 SETTABLEKS                       R20 R19 K51 ["Stylizer"]
      164 CALL                             R18 1 1
      165 MOVE                             R19 R16
      166 CALL                             R18 1 1
      167 MOVE                             R16 R18
      168 RETURN                           R16 1
