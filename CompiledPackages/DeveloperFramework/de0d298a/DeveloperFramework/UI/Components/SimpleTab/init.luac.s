PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R1 R0 K1 ["Disabled"]
        5 JUMPIF                           R1 ; [+5]
        6 GETTABLEKS                       R1 R0 K2 ["OnTabSelected"]
        8 GETTABLEKS                       R2 R0 K3 ["Tab"]
       10 CALL                             R1 1 0
       11 RETURN                           R0 0

PROTO_1:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          VAL R0
        2 SETTABLEKS                       R1 R0 K0 ["onPress"]
        4 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETUPVAL                         R3 0
        3 JUMPIFNOT                        R3 ; [+6]
        4 GETTABLEKS                       R2 R1 K1 ["Style"]
        6 JUMPIF                           R2 ; [+7]
        7 NEWTABLE                         R2 0 0
        9 JUMP                             ; [+4]
       10 GETTABLEKS                       R2 R0 K0 ["props"]
       12 GETTABLEKS                       R2 R2 K2 ["Stylizer"]
       14 GETTABLEKS                       R3 R1 K3 ["Tab"]
       16 GETTABLEKS                       R3 R3 K4 ["Icon"]
       18 GETTABLEKS                       R4 R1 K3 ["Tab"]
       20 GETTABLEKS                       R4 R4 K5 ["Label"]
       22 GETTABLEKS                       R5 R1 K3 ["Tab"]
       24 GETTABLEKS                       R5 R5 K6 ["Tooltip"]
       26 GETTABLEKS                       R6 R1 K7 ["Selected"]
       28 GETTABLEKS                       R7 R2 K8 ["Color"]
       30 GETTABLEKS                       R8 R2 K9 ["BottomLineColor"]
       32 LOADN                            R9 0
       33 LOADN                            R10 0
       34 GETUPVAL                         R11 0
       35 JUMPIF                           R11 ; [+20]
       36 GETTABLEKS                       R11 R1 K10 ["AbsoluteSize"]
       38 JUMPIFNOT                        R11 ; [+5]
       39 GETTABLEKS                       R11 R1 K10 ["AbsoluteSize"]
       41 GETTABLEKS                       R10 R11 K11 ["X"]
       43 JUMP                             ; [+1]
       44 LOADNIL                          R10
       45 JUMPIFNOT                        R6 ; [+10]
       46 GETTABLEKS                       R9 R2 K12 ["BorderSize"]
       48 JUMPIFNOT                        R10 ; [+7]
       49 GETTABLEKS                       R11 R2 K12 ["BorderSize"]
       51 JUMPIFNOT                        R11 ; [+4]
       52 GETTABLEKS                       R12 R2 K12 ["BorderSize"]
       54 MULK                             R11 R12 K13 [2]
       55 SUB                              R10 R10 R11
       56 GETUPVAL                         R11 1
       57 GETTABLEKS                       R11 R11 K14 ["createElement"]
       59 GETUPVAL                         R12 2
       60 GETUPVAL                         R13 3
       61 DUPTABLE                         R14 K17 [{"LayoutOrder", "OnPress"}]
       62 GETTABLEKS                       R15 R1 K18 ["Index"]
       64 SETTABLEKS                       R15 R14 K15 ["LayoutOrder"]
       66 GETTABLEKS                       R15 R0 K19 ["onPress"]
       68 SETTABLEKS                       R15 R14 K16 ["OnPress"]
       70 GETTABLEKS                       R15 R1 K20 ["WrapperProps"]
       72 GETUPVAL                         R17 0
       73 JUMPIFNOT                        R17 ; [+15]
       74 NEWTABLE                         R16 1 0
       76 GETUPVAL                         R17 4
       77 GETTABLEKS                       R17 R17 K21 ["Tag"]
       79 GETUPVAL                         R18 5
       80 LOADK                            R19 K22 ["Component-SimpleTab"]
       81 GETUPVAL                         R22 4
       82 GETTABLEKS                       R22 R22 K21 ["Tag"]
       84 GETTABLE                         R21 R1 R22
       85 ORK                              R20 R21 K23 ["X-Fit"]
       86 CALL                             R18 2 1
       87 SETTABLE                         R18 R16 R17
       88 JUMP                             ; [+5]
       89 DUPTABLE                         R16 K26 [{["AutomaticSize"], ["Style"] = "Box"}]
       90 GETIMPORT                        R17 K29 [Enum.AutomaticSize.XY]
       92 SETTABLEKS                       R17 R16 K24 ["AutomaticSize"]
       94 NEWTABLE                         R17 1 0
       96 GETUPVAL                         R18 1
       97 GETTABLEKS                       R18 R18 K30 ["Ref"]
       99 GETTABLEKS                       R19 R1 K31 ["ForwardRef"]
      101 SETTABLE                         R19 R17 R18
      102 CALL                             R13 4 1
      103 DUPTABLE                         R14 K35 [{"Row", "TopLine", "BottomLine"}]
      104 GETUPVAL                         R15 1
      105 GETTABLEKS                       R15 R15 K14 ["createElement"]
      107 GETUPVAL                         R16 2
      108 GETUPVAL                         R18 0
      109 JUMPIFNOT                        R18 ; [+14]
      110 NEWTABLE                         R17 1 0
      112 GETUPVAL                         R18 4
      113 GETTABLEKS                       R18 R18 K21 ["Tag"]
      115 GETUPVAL                         R19 5
      116 LOADK                            R20 K36 ["Contents X-RowS X-Middle"]
      117 JUMPIFNOT                        R6 ; [+2]
      118 LOADK                            R21 K37 ["TabSelected Muted"]
      119 JUMP                             ; [+1]
      120 LOADK                            R21 K38 ["Secondary"]
      121 CALL                             R19 2 1
      122 SETTABLE                         R19 R17 R18
      123 JUMP                             ; [+40]
      124 DUPTABLE                         R17 K47 [{"Spacing", "Padding", "Layout", "BackgroundColor", "BorderColor3", "BorderMode", "BorderSizePixel", "AutomaticSize", "Size"}]
      125 GETTABLEKS                       R18 R2 K39 ["Spacing"]
      127 SETTABLEKS                       R18 R17 K39 ["Spacing"]
      129 GETTABLEKS                       R18 R2 K40 ["Padding"]
      131 SETTABLEKS                       R18 R17 K40 ["Padding"]
      133 GETIMPORT                        R18 K50 [Enum.FillDirection.Horizontal]
      135 SETTABLEKS                       R18 R17 K41 ["Layout"]
      137 GETTABLEKS                       R18 R2 K42 ["BackgroundColor"]
      139 SETTABLEKS                       R18 R17 K42 ["BackgroundColor"]
      141 GETTABLEKS                       R18 R2 K51 ["BorderColor"]
      143 SETTABLEKS                       R18 R17 K43 ["BorderColor3"]
      145 GETIMPORT                        R18 K53 [Enum.BorderMode.Inset]
      147 SETTABLEKS                       R18 R17 K44 ["BorderMode"]
      149 GETTABLEKS                       R18 R2 K12 ["BorderSize"]
      151 SETTABLEKS                       R18 R17 K45 ["BorderSizePixel"]
      153 GETIMPORT                        R18 K54 [Enum.AutomaticSize.X]
      155 SETTABLEKS                       R18 R17 K24 ["AutomaticSize"]
      157 GETIMPORT                        R18 K57 [UDim2.fromOffset]
      159 LOADN                            R19 0
      160 LOADN                            R20 32
      161 CALL                             R18 2 1
      162 SETTABLEKS                       R18 R17 K46 ["Size"]
      164 DUPTABLE                         R18 K58 [{"Icon", "Label"}]
      165 MOVE                             R19 R3
      166 JUMPIFNOT                        R19 ; [+32]
      167 GETUPVAL                         R19 1
      168 GETTABLEKS                       R19 R19 K14 ["createElement"]
      170 GETUPVAL                         R20 6
      171 GETUPVAL                         R22 0
      172 JUMPIFNOT                        R22 ; [+13]
      173 NEWTABLE                         R21 4 0
      175 SETTABLEKS                       R3 R21 K59 ["Image"]
      177 LOADN                            R22 1
      178 SETTABLEKS                       R22 R21 K15 ["LayoutOrder"]
      180 GETUPVAL                         R22 4
      181 GETTABLEKS                       R22 R22 K21 ["Tag"]
      183 LOADK                            R23 K60 ["Icon16"]
      184 SETTABLE                         R23 R21 R22
      185 JUMP                             ; [+12]
      186 DUPTABLE                         R21 K63 [{["Image"], ["ImageColor3"], ["Size"], ["LayoutOrder"] = 1}]
      187 SETTABLEKS                       R3 R21 K59 ["Image"]
      189 SETTABLEKS                       R7 R21 K61 ["ImageColor3"]
      191 GETIMPORT                        R22 K57 [UDim2.fromOffset]
      193 LOADN                            R23 16
      194 LOADN                            R24 16
      195 CALL                             R22 2 1
      196 SETTABLEKS                       R22 R21 K46 ["Size"]
      198 CALL                             R19 2 1
      199 SETTABLEKS                       R19 R18 K4 ["Icon"]
      201 MOVE                             R19 R4
      202 JUMPIFNOT                        R19 ; [+53]
      203 GETUPVAL                         R19 1
      204 GETTABLEKS                       R19 R19 K14 ["createElement"]
      206 GETUPVAL                         R20 7
      207 GETUPVAL                         R22 0
      208 JUMPIFNOT                        R22 ; [+29]
      209 NEWTABLE                         R21 8 0
      211 LOADN                            R22 2
      212 SETTABLEKS                       R22 R21 K15 ["LayoutOrder"]
      214 GETTABLEKS                       R22 R2 K64 ["Font"]
      216 SETTABLEKS                       R22 R21 K64 ["Font"]
      218 SETTABLEKS                       R4 R21 K65 ["Text"]
      220 GETTABLEKS                       R22 R2 K66 ["TextSize"]
      222 SETTABLEKS                       R22 R21 K66 ["TextSize"]
      224 GETUPVAL                         R22 4
      225 GETTABLEKS                       R22 R22 K21 ["Tag"]
      227 GETUPVAL                         R23 5
      228 LOADK                            R24 K23 ["X-Fit"]
      229 GETTABLEKS                       R26 R1 K67 ["Disabled"]
      231 JUMPIFNOT                        R26 ; [+2]
      232 LOADK                            R25 K67 ["Disabled"]
      233 JUMP                             ; [+1]
      234 LOADNIL                          R25
      235 CALL                             R23 2 1
      236 SETTABLE                         R23 R21 R22
      237 JUMP                             ; [+17]
      238 DUPTABLE                         R21 K69 [{["TextColor"], ["Font"], ["AutomaticSize"], ["Text"], ["TextSize"], ["LayoutOrder"] = 2}]
      239 SETTABLEKS                       R7 R21 K68 ["TextColor"]
      241 GETTABLEKS                       R22 R2 K64 ["Font"]
      243 SETTABLEKS                       R22 R21 K64 ["Font"]
      245 GETIMPORT                        R22 K29 [Enum.AutomaticSize.XY]
      247 SETTABLEKS                       R22 R21 K24 ["AutomaticSize"]
      249 SETTABLEKS                       R4 R21 K65 ["Text"]
      251 GETTABLEKS                       R22 R2 K66 ["TextSize"]
      253 SETTABLEKS                       R22 R21 K66 ["TextSize"]
      255 CALL                             R19 2 1
      256 SETTABLEKS                       R19 R18 K5 ["Label"]
      258 CALL                             R15 3 1
      259 SETTABLEKS                       R15 R14 K32 ["Row"]
      261 MOVE                             R15 R6
      262 JUMPIFNOT                        R15 ; [+52]
      263 GETUPVAL                         R15 1
      264 GETTABLEKS                       R15 R15 K14 ["createElement"]
      266 GETUPVAL                         R16 2
      267 GETUPVAL                         R18 0
      268 JUMPIFNOT                        R18 ; [+11]
      269 NEWTABLE                         R17 2 0
      271 LOADN                            R18 2
      272 SETTABLEKS                       R18 R17 K70 ["ZIndex"]
      274 GETUPVAL                         R18 4
      275 GETTABLEKS                       R18 R18 K21 ["Tag"]
      277 LOADK                            R19 K33 ["TopLine"]
      278 SETTABLE                         R19 R17 R18
      279 JUMP                             ; [+34]
      280 DUPTABLE                         R17 K72 [{["Position"], ["Size"], ["BackgroundColor"], ["ZIndex"] = 2}]
      281 GETIMPORT                        R18 K57 [UDim2.fromOffset]
      283 GETTABLEKS                       R19 R2 K12 ["BorderSize"]
      285 LOADN                            R20 0
      286 CALL                             R18 2 1
      287 SETTABLEKS                       R18 R17 K71 ["Position"]
      289 GETUPVAL                         R19 8
      290 JUMPIFNOT                        R19 ; [+9]
      291 GETIMPORT                        R18 K74 [UDim2.new]
      293 LOADN                            R19 1
      294 LOADN                            R20 0
      295 LOADN                            R21 0
      296 GETTABLEKS                       R22 R2 K75 ["TopLineHeight"]
      298 CALL                             R18 4 1
      299 JUMP                             ; [+8]
      300 GETIMPORT                        R18 K74 [UDim2.new]
      302 LOADN                            R19 0
      303 MOVE                             R20 R10
      304 LOADN                            R21 0
      305 GETTABLEKS                       R22 R2 K75 ["TopLineHeight"]
      307 CALL                             R18 4 1
      308 SETTABLEKS                       R18 R17 K46 ["Size"]
      310 GETTABLEKS                       R18 R2 K76 ["TopLineColor"]
      312 SETTABLEKS                       R18 R17 K42 ["BackgroundColor"]
      314 CALL                             R15 2 1
      315 SETTABLEKS                       R15 R14 K33 ["TopLine"]
      317 GETUPVAL                         R15 1
      318 GETTABLEKS                       R15 R15 K14 ["createElement"]
      320 GETUPVAL                         R16 2
      321 GETUPVAL                         R18 0
      322 JUMPIFNOT                        R18 ; [+17]
      323 NEWTABLE                         R17 2 0
      325 LOADN                            R18 1
      326 SETTABLEKS                       R18 R17 K70 ["ZIndex"]
      328 GETUPVAL                         R18 4
      329 GETTABLEKS                       R18 R18 K21 ["Tag"]
      331 GETUPVAL                         R19 5
      332 LOADK                            R20 K34 ["BottomLine"]
      333 JUMPIFNOT                        R6 ; [+2]
      334 LOADK                            R21 K77 ["TabSelected"]
      335 JUMP                             ; [+1]
      336 LOADNIL                          R21
      337 CALL                             R19 2 1
      338 SETTABLE                         R19 R17 R18
      339 JUMP                             ; [+29]
      340 DUPTABLE                         R17 K79 [{["Size"], ["Position"], ["AnchorPoint"], ["BackgroundColor"], ["ZIndex"] = 1}]
      341 GETIMPORT                        R18 K74 [UDim2.new]
      343 LOADN                            R19 1
      344 LOADN                            R20 0
      345 LOADN                            R21 0
      346 GETTABLEKS                       R22 R2 K12 ["BorderSize"]
      348 CALL                             R18 4 1
      349 SETTABLEKS                       R18 R17 K46 ["Size"]
      351 GETIMPORT                        R18 K74 [UDim2.new]
      353 LOADN                            R19 0
      354 MOVE                             R20 R9
      355 LOADN                            R21 0
      356 LOADN                            R22 32
      357 CALL                             R18 4 1
      358 SETTABLEKS                       R18 R17 K71 ["Position"]
      360 GETIMPORT                        R18 K81 [Vector2.new]
      362 LOADN                            R19 0
      363 LOADN                            R20 1
      364 CALL                             R18 2 1
      365 SETTABLEKS                       R18 R17 K78 ["AnchorPoint"]
      367 SETTABLEKS                       R8 R17 K42 ["BackgroundColor"]
      369 CALL                             R15 2 1
      370 SETTABLEKS                       R15 R14 K34 ["BottomLine"]
      372 CALL                             R11 3 1
      373 JUMPIFNOT                        R5 ; [+11]
      374 GETUPVAL                         R12 1
      375 GETTABLEKS                       R12 R12 K14 ["createElement"]
      377 GETUPVAL                         R13 9
      378 DUPTABLE                         R14 K83 [{"Text", "Child"}]
      379 SETTABLEKS                       R5 R14 K65 ["Text"]
      381 SETTABLEKS                       R11 R14 K82 ["Child"]
      383 CALL                             R12 2 -1
      384 RETURN                           R12 -1
      385 RETURN                           R11 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["UI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R0 R0 K4 ["Parent"]
        9 GETIMPORT                        R1 K6 [require]
       11 GETTABLEKS                       R2 R0 K4 ["Parent"]
       13 GETTABLEKS                       R2 R2 K7 ["Roact"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K6 [require]
       18 GETTABLEKS                       R3 R0 K2 ["UI"]
       20 GETTABLEKS                       R3 R3 K8 ["Components"]
       22 GETTABLEKS                       R3 R3 K9 ["Tabs"]
       24 GETTABLEKS                       R3 R3 K10 ["types"]
       26 CALL                             R2 1 1
       27 GETIMPORT                        R3 K6 [require]
       29 GETTABLEKS                       R4 R0 K2 ["UI"]
       31 GETTABLEKS                       R4 R4 K11 ["ContextServices"]
       33 CALL                             R3 1 1
       34 GETTABLEKS                       R4 R3 K12 ["withContext"]
       36 GETIMPORT                        R5 K6 [require]
       38 GETTABLEKS                       R6 R0 K13 ["Wrappers"]
       40 GETTABLEKS                       R6 R6 K14 ["withAbsoluteSize"]
       42 CALL                             R5 1 1
       43 GETTABLEKS                       R7 R0 K4 ["Parent"]
       45 LOADK                            R9 K15 ["React"]
       46 NAMECALL                         R7 R7 K16 ["FindFirstChild"]
       48 CALL                             R7 2 1
       49 JUMPIFNOT                        R7 ; [+8]
       50 GETIMPORT                        R6 K6 [require]
       52 GETTABLEKS                       R7 R0 K4 ["Parent"]
       54 GETTABLEKS                       R7 R7 K15 ["React"]
       56 CALL                             R6 1 1
       57 JUMP                             ; [+1]
       58 LOADNIL                          R6
       59 GETIMPORT                        R7 K6 [require]
       61 GETTABLEKS                       R8 R0 K17 ["Styling"]
       63 GETTABLEKS                       R8 R8 K18 ["supportsStyleSheets"]
       65 CALL                             R7 1 1
       66 GETIMPORT                        R8 K6 [require]
       68 GETTABLEKS                       R9 R0 K17 ["Styling"]
       70 GETTABLEKS                       R9 R9 K19 ["joinTags"]
       72 CALL                             R8 1 1
       73 GETIMPORT                        R9 K6 [require]
       75 GETTABLEKS                       R10 R0 K13 ["Wrappers"]
       77 GETTABLEKS                       R10 R10 K20 ["withControl"]
       79 CALL                             R9 1 1
       80 GETIMPORT                        R10 K6 [require]
       82 GETTABLEKS                       R11 R0 K13 ["Wrappers"]
       84 GETTABLEKS                       R11 R11 K21 ["withForwardRef"]
       86 CALL                             R10 1 1
       87 GETIMPORT                        R11 K6 [require]
       89 GETTABLEKS                       R12 R0 K4 ["Parent"]
       91 GETTABLEKS                       R12 R12 K22 ["Dash"]
       93 CALL                             R11 1 1
       94 GETTABLEKS                       R12 R11 K23 ["assign"]
       96 GETTABLEKS                       R13 R0 K2 ["UI"]
       98 GETIMPORT                        R14 K6 [require]
      100 GETTABLEKS                       R15 R13 K8 ["Components"]
      102 GETTABLEKS                       R15 R15 K24 ["Pane"]
      104 CALL                             R14 1 1
      105 GETIMPORT                        R15 K6 [require]
      107 GETTABLEKS                       R16 R13 K8 ["Components"]
      109 GETTABLEKS                       R16 R16 K25 ["Tooltip"]
      111 CALL                             R15 1 1
      112 GETIMPORT                        R16 K6 [require]
      114 GETTABLEKS                       R17 R13 K8 ["Components"]
      116 GETTABLEKS                       R17 R17 K26 ["Image"]
      118 CALL                             R16 1 1
      119 GETIMPORT                        R17 K6 [require]
      121 GETTABLEKS                       R18 R13 K8 ["Components"]
      123 GETTABLEKS                       R18 R18 K27 ["TextLabel"]
      125 CALL                             R17 1 1
      126 GETTABLEKS                       R18 R1 K28 ["PureComponent"]
      128 LOADK                            R20 K29 ["SimpleTab"]
      129 NAMECALL                         R18 R18 K30 ["extend"]
      131 CALL                             R18 2 1
      132 GETIMPORT                        R19 K32 [game]
      134 LOADK                            R21 K33 ["SimpleTabNoAbsoluteSize"]
      135 LOADB                            R22 0
      136 NAMECALL                         R19 R19 K34 ["DefineFastFlag"]
      138 CALL                             R19 3 1
      139 DUPCLOSURE                       R20 K35 [PROTO_1]
      140 SETTABLEKS                       R20 R18 K36 ["init"]
      142 DUPCLOSURE                       R20 K37 [PROTO_2]
      143 CAPTURE                          VAL R7
      144 CAPTURE                          VAL R1
      145 CAPTURE                          VAL R14
      146 CAPTURE                          VAL R12
      147 CAPTURE                          VAL R6
      148 CAPTURE                          VAL R8
      149 CAPTURE                          VAL R16
      150 CAPTURE                          VAL R17
      151 CAPTURE                          VAL R19
      152 CAPTURE                          VAL R15
      153 SETTABLEKS                       R20 R18 K38 ["render"]
      155 JUMPIF                           R7 ; [+10]
      156 MOVE                             R20 R4
      157 DUPTABLE                         R21 K40 [{"Stylizer"}]
      158 GETTABLEKS                       R22 R3 K39 ["Stylizer"]
      160 SETTABLEKS                       R22 R21 K39 ["Stylizer"]
      162 CALL                             R20 1 1
      163 MOVE                             R21 R18
      164 CALL                             R20 1 1
      165 MOVE                             R18 R20
      166 MOVE                             R20 R10
      167 MOVE                             R21 R18
      168 CALL                             R20 1 1
      169 MOVE                             R18 R20
      170 JUMPIFNOT                        R7 ; [+1]
      171 RETURN                           R18 1
      172 JUMPIFNOT                        R19 ; [+4]
      173 MOVE                             R20 R9
      174 MOVE                             R21 R18
      175 CALL                             R20 1 -1
      176 RETURN                           R20 -1
      177 MOVE                             R20 R5
      178 MOVE                             R21 R9
      179 MOVE                             R22 R18
      180 CALL                             R21 1 -1
      181 CALL                             R20 -1 -1
      182 RETURN                           R20 -1
