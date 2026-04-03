PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["props"]
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
       10 GETTABLEKS                       R3 R0 K0 ["props"]
       12 GETTABLEKS                       R2 R3 K2 ["Stylizer"]
       14 GETTABLEKS                       R4 R1 K3 ["Tab"]
       16 GETTABLEKS                       R3 R4 K4 ["Icon"]
       18 GETTABLEKS                       R5 R1 K3 ["Tab"]
       20 GETTABLEKS                       R4 R5 K5 ["Label"]
       22 GETTABLEKS                       R6 R1 K3 ["Tab"]
       24 GETTABLEKS                       R5 R6 K6 ["Tooltip"]
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
       56 GETUPVAL                         R12 1
       57 GETTABLEKS                       R11 R12 K14 ["createElement"]
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
       76 GETUPVAL                         R18 4
       77 GETTABLEKS                       R17 R18 K21 ["Tag"]
       79 GETUPVAL                         R18 5
       80 LOADK                            R19 K22 ["Component-SimpleTab"]
       81 GETUPVAL                         R23 4
       82 GETTABLEKS                       R22 R23 K21 ["Tag"]
       84 GETTABLE                         R21 R1 R22
       85 ORK                              R20 R21 K23 ["X-Fit"]
       86 CALL                             R18 2 1
       87 SETTABLE                         R18 R16 R17
       88 JUMP                             ; [+8]
       89 DUPTABLE                         R16 K25 [{"AutomaticSize", "Style"}]
       90 GETIMPORT                        R17 K28 [Enum.AutomaticSize.XY]
       92 SETTABLEKS                       R17 R16 K24 ["AutomaticSize"]
       94 LOADK                            R17 K29 ["Box"]
       95 SETTABLEKS                       R17 R16 K1 ["Style"]
       97 NEWTABLE                         R17 1 0
       99 GETUPVAL                         R19 1
      100 GETTABLEKS                       R18 R19 K30 ["Ref"]
      102 GETTABLEKS                       R19 R1 K31 ["ForwardRef"]
      104 SETTABLE                         R19 R17 R18
      105 CALL                             R13 4 1
      106 DUPTABLE                         R14 K35 [{"Row", "TopLine", "BottomLine"}]
      107 GETUPVAL                         R16 1
      108 GETTABLEKS                       R15 R16 K14 ["createElement"]
      110 GETUPVAL                         R16 2
      111 GETUPVAL                         R18 0
      112 JUMPIFNOT                        R18 ; [+14]
      113 NEWTABLE                         R17 1 0
      115 GETUPVAL                         R19 4
      116 GETTABLEKS                       R18 R19 K21 ["Tag"]
      118 GETUPVAL                         R19 5
      119 LOADK                            R20 K36 ["Contents X-RowS X-Middle"]
      120 JUMPIFNOT                        R6 ; [+2]
      121 LOADK                            R21 K37 ["TabSelected Muted"]
      122 JUMP                             ; [+1]
      123 LOADK                            R21 K38 ["Secondary"]
      124 CALL                             R19 2 1
      125 SETTABLE                         R19 R17 R18
      126 JUMP                             ; [+40]
      127 DUPTABLE                         R17 K47 [{"Spacing", "Padding", "Layout", "BackgroundColor", "BorderColor3", "BorderMode", "BorderSizePixel", "AutomaticSize", "Size"}]
      128 GETTABLEKS                       R18 R2 K39 ["Spacing"]
      130 SETTABLEKS                       R18 R17 K39 ["Spacing"]
      132 GETTABLEKS                       R18 R2 K40 ["Padding"]
      134 SETTABLEKS                       R18 R17 K40 ["Padding"]
      136 GETIMPORT                        R18 K50 [Enum.FillDirection.Horizontal]
      138 SETTABLEKS                       R18 R17 K41 ["Layout"]
      140 GETTABLEKS                       R18 R2 K42 ["BackgroundColor"]
      142 SETTABLEKS                       R18 R17 K42 ["BackgroundColor"]
      144 GETTABLEKS                       R18 R2 K51 ["BorderColor"]
      146 SETTABLEKS                       R18 R17 K43 ["BorderColor3"]
      148 GETIMPORT                        R18 K53 [Enum.BorderMode.Inset]
      150 SETTABLEKS                       R18 R17 K44 ["BorderMode"]
      152 GETTABLEKS                       R18 R2 K12 ["BorderSize"]
      154 SETTABLEKS                       R18 R17 K45 ["BorderSizePixel"]
      156 GETIMPORT                        R18 K54 [Enum.AutomaticSize.X]
      158 SETTABLEKS                       R18 R17 K24 ["AutomaticSize"]
      160 GETIMPORT                        R18 K57 [UDim2.fromOffset]
      162 LOADN                            R19 0
      163 LOADN                            R20 32
      164 CALL                             R18 2 1
      165 SETTABLEKS                       R18 R17 K46 ["Size"]
      167 DUPTABLE                         R18 K58 [{"Icon", "Label"}]
      168 MOVE                             R19 R3
      169 JUMPIFNOT                        R19 ; [+35]
      170 GETUPVAL                         R20 1
      171 GETTABLEKS                       R19 R20 K14 ["createElement"]
      173 GETUPVAL                         R20 6
      174 GETUPVAL                         R22 0
      175 JUMPIFNOT                        R22 ; [+13]
      176 NEWTABLE                         R21 4 0
      178 SETTABLEKS                       R3 R21 K59 ["Image"]
      180 LOADN                            R22 1
      181 SETTABLEKS                       R22 R21 K15 ["LayoutOrder"]
      183 GETUPVAL                         R23 4
      184 GETTABLEKS                       R22 R23 K21 ["Tag"]
      186 LOADK                            R23 K60 ["Icon16"]
      187 SETTABLE                         R23 R21 R22
      188 JUMP                             ; [+15]
      189 DUPTABLE                         R21 K62 [{"Image", "ImageColor3", "Size", "LayoutOrder"}]
      190 SETTABLEKS                       R3 R21 K59 ["Image"]
      192 SETTABLEKS                       R7 R21 K61 ["ImageColor3"]
      194 GETIMPORT                        R22 K57 [UDim2.fromOffset]
      196 LOADN                            R23 16
      197 LOADN                            R24 16
      198 CALL                             R22 2 1
      199 SETTABLEKS                       R22 R21 K46 ["Size"]
      201 LOADN                            R22 1
      202 SETTABLEKS                       R22 R21 K15 ["LayoutOrder"]
      204 CALL                             R19 2 1
      205 SETTABLEKS                       R19 R18 K4 ["Icon"]
      207 MOVE                             R19 R4
      208 JUMPIFNOT                        R19 ; [+66]
      209 GETUPVAL                         R20 1
      210 GETTABLEKS                       R19 R20 K14 ["createElement"]
      212 GETUPVAL                         R20 7
      213 GETUPVAL                         R22 0
      214 JUMPIFNOT                        R22 ; [+34]
      215 NEWTABLE                         R21 8 0
      217 LOADN                            R22 2
      218 SETTABLEKS                       R22 R21 K15 ["LayoutOrder"]
      220 GETTABLEKS                       R22 R2 K63 ["Font"]
      222 SETTABLEKS                       R22 R21 K63 ["Font"]
      224 SETTABLEKS                       R4 R21 K64 ["Text"]
      226 GETUPVAL                         R23 8
      227 CALL                             R23 0 1
      228 JUMPIFNOT                        R23 ; [+3]
      229 GETTABLEKS                       R22 R2 K65 ["TextSize"]
      231 JUMP                             ; [+1]
      232 LOADNIL                          R22
      233 SETTABLEKS                       R22 R21 K65 ["TextSize"]
      235 GETUPVAL                         R23 4
      236 GETTABLEKS                       R22 R23 K21 ["Tag"]
      238 GETUPVAL                         R23 5
      239 LOADK                            R24 K23 ["X-Fit"]
      240 GETTABLEKS                       R26 R1 K66 ["Disabled"]
      242 JUMPIFNOT                        R26 ; [+2]
      243 LOADK                            R25 K66 ["Disabled"]
      244 JUMP                             ; [+1]
      245 LOADNIL                          R25
      246 CALL                             R23 2 1
      247 SETTABLE                         R23 R21 R22
      248 JUMP                             ; [+25]
      249 DUPTABLE                         R21 K68 [{"TextColor", "Font", "AutomaticSize", "Text", "TextSize", "LayoutOrder"}]
      250 SETTABLEKS                       R7 R21 K67 ["TextColor"]
      252 GETTABLEKS                       R22 R2 K63 ["Font"]
      254 SETTABLEKS                       R22 R21 K63 ["Font"]
      256 GETIMPORT                        R22 K28 [Enum.AutomaticSize.XY]
      258 SETTABLEKS                       R22 R21 K24 ["AutomaticSize"]
      260 SETTABLEKS                       R4 R21 K64 ["Text"]
      262 GETUPVAL                         R23 8
      263 CALL                             R23 0 1
      264 JUMPIFNOT                        R23 ; [+3]
      265 GETTABLEKS                       R22 R2 K65 ["TextSize"]
      267 JUMP                             ; [+1]
      268 LOADNIL                          R22
      269 SETTABLEKS                       R22 R21 K65 ["TextSize"]
      271 LOADN                            R22 2
      272 SETTABLEKS                       R22 R21 K15 ["LayoutOrder"]
      274 CALL                             R19 2 1
      275 SETTABLEKS                       R19 R18 K5 ["Label"]
      277 CALL                             R15 3 1
      278 SETTABLEKS                       R15 R14 K32 ["Row"]
      280 MOVE                             R15 R6
      281 JUMPIFNOT                        R15 ; [+55]
      282 GETUPVAL                         R16 1
      283 GETTABLEKS                       R15 R16 K14 ["createElement"]
      285 GETUPVAL                         R16 2
      286 GETUPVAL                         R18 0
      287 JUMPIFNOT                        R18 ; [+11]
      288 NEWTABLE                         R17 2 0
      290 LOADN                            R18 2
      291 SETTABLEKS                       R18 R17 K69 ["ZIndex"]
      293 GETUPVAL                         R19 4
      294 GETTABLEKS                       R18 R19 K21 ["Tag"]
      296 LOADK                            R19 K33 ["TopLine"]
      297 SETTABLE                         R19 R17 R18
      298 JUMP                             ; [+37]
      299 DUPTABLE                         R17 K71 [{"Position", "Size", "BackgroundColor", "ZIndex"}]
      300 GETIMPORT                        R18 K57 [UDim2.fromOffset]
      302 GETTABLEKS                       R19 R2 K12 ["BorderSize"]
      304 LOADN                            R20 0
      305 CALL                             R18 2 1
      306 SETTABLEKS                       R18 R17 K70 ["Position"]
      308 GETUPVAL                         R19 9
      309 JUMPIFNOT                        R19 ; [+9]
      310 GETIMPORT                        R18 K73 [UDim2.new]
      312 LOADN                            R19 1
      313 LOADN                            R20 0
      314 LOADN                            R21 0
      315 GETTABLEKS                       R22 R2 K74 ["TopLineHeight"]
      317 CALL                             R18 4 1
      318 JUMP                             ; [+8]
      319 GETIMPORT                        R18 K73 [UDim2.new]
      321 LOADN                            R19 0
      322 MOVE                             R20 R10
      323 LOADN                            R21 0
      324 GETTABLEKS                       R22 R2 K74 ["TopLineHeight"]
      326 CALL                             R18 4 1
      327 SETTABLEKS                       R18 R17 K46 ["Size"]
      329 GETTABLEKS                       R18 R2 K75 ["TopLineColor"]
      331 SETTABLEKS                       R18 R17 K42 ["BackgroundColor"]
      333 LOADN                            R18 2
      334 SETTABLEKS                       R18 R17 K69 ["ZIndex"]
      336 CALL                             R15 2 1
      337 SETTABLEKS                       R15 R14 K33 ["TopLine"]
      339 GETUPVAL                         R16 1
      340 GETTABLEKS                       R15 R16 K14 ["createElement"]
      342 GETUPVAL                         R16 2
      343 GETUPVAL                         R18 0
      344 JUMPIFNOT                        R18 ; [+17]
      345 NEWTABLE                         R17 2 0
      347 LOADN                            R18 1
      348 SETTABLEKS                       R18 R17 K69 ["ZIndex"]
      350 GETUPVAL                         R19 4
      351 GETTABLEKS                       R18 R19 K21 ["Tag"]
      353 GETUPVAL                         R19 5
      354 LOADK                            R20 K34 ["BottomLine"]
      355 JUMPIFNOT                        R6 ; [+2]
      356 LOADK                            R21 K76 ["TabSelected"]
      357 JUMP                             ; [+1]
      358 LOADNIL                          R21
      359 CALL                             R19 2 1
      360 SETTABLE                         R19 R17 R18
      361 JUMP                             ; [+32]
      362 DUPTABLE                         R17 K78 [{"Size", "Position", "AnchorPoint", "BackgroundColor", "ZIndex"}]
      363 GETIMPORT                        R18 K73 [UDim2.new]
      365 LOADN                            R19 1
      366 LOADN                            R20 0
      367 LOADN                            R21 0
      368 GETTABLEKS                       R22 R2 K12 ["BorderSize"]
      370 CALL                             R18 4 1
      371 SETTABLEKS                       R18 R17 K46 ["Size"]
      373 GETIMPORT                        R18 K73 [UDim2.new]
      375 LOADN                            R19 0
      376 MOVE                             R20 R9
      377 LOADN                            R21 0
      378 LOADN                            R22 32
      379 CALL                             R18 4 1
      380 SETTABLEKS                       R18 R17 K70 ["Position"]
      382 GETIMPORT                        R18 K80 [Vector2.new]
      384 LOADN                            R19 0
      385 LOADN                            R20 1
      386 CALL                             R18 2 1
      387 SETTABLEKS                       R18 R17 K77 ["AnchorPoint"]
      389 SETTABLEKS                       R8 R17 K42 ["BackgroundColor"]
      391 LOADN                            R18 1
      392 SETTABLEKS                       R18 R17 K69 ["ZIndex"]
      394 CALL                             R15 2 1
      395 SETTABLEKS                       R15 R14 K34 ["BottomLine"]
      397 CALL                             R11 3 1
      398 JUMPIFNOT                        R5 ; [+11]
      399 GETUPVAL                         R13 1
      400 GETTABLEKS                       R12 R13 K14 ["createElement"]
      402 GETUPVAL                         R13 10
      403 DUPTABLE                         R14 K82 [{"Text", "Child"}]
      404 SETTABLEKS                       R5 R14 K64 ["Text"]
      406 SETTABLEKS                       R11 R14 K81 ["Child"]
      408 CALL                             R12 2 -1
      409 RETURN                           R12 -1
      410 RETURN                           R11 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R1 K1 [script]
        3 LOADK                            R3 K2 ["UI"]
        4 NAMECALL                         R1 R1 K3 ["FindFirstAncestor"]
        6 CALL                             R1 2 1
        7 GETTABLEKS                       R0 R1 K4 ["Parent"]
        9 GETIMPORT                        R1 K6 [require]
       11 GETTABLEKS                       R3 R0 K4 ["Parent"]
       13 GETTABLEKS                       R2 R3 K7 ["Roact"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K6 [require]
       18 GETTABLEKS                       R6 R0 K2 ["UI"]
       20 GETTABLEKS                       R5 R6 K8 ["Components"]
       22 GETTABLEKS                       R4 R5 K9 ["Tabs"]
       24 GETTABLEKS                       R3 R4 K10 ["types"]
       26 CALL                             R2 1 1
       27 GETIMPORT                        R3 K6 [require]
       29 GETTABLEKS                       R5 R0 K2 ["UI"]
       31 GETTABLEKS                       R4 R5 K11 ["ContextServices"]
       33 CALL                             R3 1 1
       34 GETTABLEKS                       R4 R3 K12 ["withContext"]
       36 GETIMPORT                        R5 K6 [require]
       38 GETTABLEKS                       R7 R0 K13 ["Wrappers"]
       40 GETTABLEKS                       R6 R7 K14 ["withAbsoluteSize"]
       42 CALL                             R5 1 1
       43 GETTABLEKS                       R7 R0 K4 ["Parent"]
       45 LOADK                            R9 K15 ["React"]
       46 NAMECALL                         R7 R7 K16 ["FindFirstChild"]
       48 CALL                             R7 2 1
       49 JUMPIFNOT                        R7 ; [+8]
       50 GETIMPORT                        R6 K6 [require]
       52 GETTABLEKS                       R8 R0 K4 ["Parent"]
       54 GETTABLEKS                       R7 R8 K15 ["React"]
       56 CALL                             R6 1 1
       57 JUMP                             ; [+1]
       58 LOADNIL                          R6
       59 GETIMPORT                        R7 K6 [require]
       61 GETTABLEKS                       R9 R0 K17 ["Styling"]
       63 GETTABLEKS                       R8 R9 K18 ["supportsStyleSheets"]
       65 CALL                             R7 1 1
       66 GETIMPORT                        R8 K6 [require]
       68 GETTABLEKS                       R10 R0 K17 ["Styling"]
       70 GETTABLEKS                       R9 R10 K19 ["joinTags"]
       72 CALL                             R8 1 1
       73 GETIMPORT                        R9 K6 [require]
       75 GETTABLEKS                       R11 R0 K13 ["Wrappers"]
       77 GETTABLEKS                       R10 R11 K20 ["withControl"]
       79 CALL                             R9 1 1
       80 GETIMPORT                        R10 K6 [require]
       82 GETTABLEKS                       R12 R0 K13 ["Wrappers"]
       84 GETTABLEKS                       R11 R12 K21 ["withForwardRef"]
       86 CALL                             R10 1 1
       87 GETIMPORT                        R11 K6 [require]
       89 GETTABLEKS                       R13 R0 K4 ["Parent"]
       91 GETTABLEKS                       R12 R13 K22 ["Dash"]
       93 CALL                             R11 1 1
       94 GETTABLEKS                       R12 R11 K23 ["assign"]
       96 GETTABLEKS                       R13 R0 K2 ["UI"]
       98 GETIMPORT                        R14 K6 [require]
      100 GETTABLEKS                       R16 R13 K8 ["Components"]
      102 GETTABLEKS                       R15 R16 K24 ["Pane"]
      104 CALL                             R14 1 1
      105 GETIMPORT                        R15 K6 [require]
      107 GETTABLEKS                       R17 R13 K8 ["Components"]
      109 GETTABLEKS                       R16 R17 K25 ["Tooltip"]
      111 CALL                             R15 1 1
      112 GETIMPORT                        R16 K6 [require]
      114 GETTABLEKS                       R18 R13 K8 ["Components"]
      116 GETTABLEKS                       R17 R18 K26 ["Image"]
      118 CALL                             R16 1 1
      119 GETIMPORT                        R17 K6 [require]
      121 GETTABLEKS                       R19 R13 K8 ["Components"]
      123 GETTABLEKS                       R18 R19 K27 ["TextLabel"]
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
      139 GETIMPORT                        R20 K6 [require]
      141 GETTABLEKS                       R22 R0 K35 ["SharedFlags"]
      143 GETTABLEKS                       R21 R22 K36 ["getFFlagDevFrameworkAdjustTextFontSize"]
      145 CALL                             R20 1 1
      146 DUPCLOSURE                       R21 K37 [PROTO_1]
      147 SETTABLEKS                       R21 R18 K38 ["init"]
      149 DUPCLOSURE                       R21 K39 [PROTO_2]
      150 CAPTURE                          VAL R7
      151 CAPTURE                          VAL R1
      152 CAPTURE                          VAL R14
      153 CAPTURE                          VAL R12
      154 CAPTURE                          VAL R6
      155 CAPTURE                          VAL R8
      156 CAPTURE                          VAL R16
      157 CAPTURE                          VAL R17
      158 CAPTURE                          VAL R20
      159 CAPTURE                          VAL R19
      160 CAPTURE                          VAL R15
      161 SETTABLEKS                       R21 R18 K40 ["render"]
      163 JUMPIF                           R7 ; [+10]
      164 MOVE                             R21 R4
      165 DUPTABLE                         R22 K42 [{"Stylizer"}]
      166 GETTABLEKS                       R23 R3 K41 ["Stylizer"]
      168 SETTABLEKS                       R23 R22 K41 ["Stylizer"]
      170 CALL                             R21 1 1
      171 MOVE                             R22 R18
      172 CALL                             R21 1 1
      173 MOVE                             R18 R21
      174 MOVE                             R21 R10
      175 MOVE                             R22 R18
      176 CALL                             R21 1 1
      177 MOVE                             R18 R21
      178 JUMPIFNOT                        R7 ; [+1]
      179 RETURN                           R18 1
      180 JUMPIFNOT                        R19 ; [+4]
      181 MOVE                             R21 R9
      182 MOVE                             R22 R18
      183 CALL                             R21 1 -1
      184 RETURN                           R21 -1
      185 MOVE                             R21 R5
      186 MOVE                             R22 R9
      187 MOVE                             R23 R18
      188 CALL                             R22 1 -1
      189 CALL                             R21 -1 -1
      190 RETURN                           R21 -1
