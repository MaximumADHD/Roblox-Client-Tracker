PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["props"]
        3 GETTABLEKS                       R1 R0 K1 ["Active"]
        5 JUMPIF                           R1 ; [+1]
        6 RETURN                           R0 0
        7 GETUPVAL                         R2 0
        8 DUPTABLE                         R4 K3 [{"hovered"}]
        9 LOADB                            R5 1
       10 SETTABLEKS                       R5 R4 K2 ["hovered"]
       12 NAMECALL                         R2 R2 K4 ["setState"]
       14 CALL                             R2 2 0
       15 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["props"]
        3 GETTABLEKS                       R1 R0 K1 ["Active"]
        5 JUMPIF                           R1 ; [+1]
        6 RETURN                           R0 0
        7 GETUPVAL                         R2 0
        8 DUPTABLE                         R4 K3 [{"hovered"}]
        9 LOADB                            R5 0
       10 SETTABLEKS                       R5 R4 K2 ["hovered"]
       12 NAMECALL                         R2 R2 K4 ["setState"]
       14 CALL                             R2 2 0
       15 RETURN                           R0 0

PROTO_2:
        0 DUPTABLE                         R1 K1 [{"hovered"}]
        1 LOADB                            R2 0
        2 SETTABLEKS                       R2 R1 K0 ["hovered"]
        4 SETTABLEKS                       R1 R0 K2 ["state"]
        6 NEWCLOSURE                       R1 P0
        7 CAPTURE                          VAL R0
        8 SETTABLEKS                       R1 R0 K3 ["onMouseEnter"]
       10 NEWCLOSURE                       R1 P1
       11 CAPTURE                          VAL R0
       12 SETTABLEKS                       R1 R0 K4 ["onMouseLeave"]
       14 RETURN                           R0 0

PROTO_3:
        0 RETURN                           R0 0

PROTO_4:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R0 K1 ["state"]
        4 GETTABLEKS                       R3 R1 K2 ["Stylizer"]
        6 GETTABLEKS                       R4 R1 K3 ["LayoutOrder"]
        8 GETTABLEKS                       R5 R1 K4 ["LabelText"]
       10 GETTABLEKS                       R6 R1 K5 ["ButtonText"]
       12 GETTABLEKS                       R7 R1 K6 ["ButtonImage"]
       14 GETTABLEKS                       R8 R1 K7 ["Active"]
       16 JUMPIFNOT                        R8 ; [+3]
       17 GETTABLEKS                       R9 R1 K8 ["OnButtonClick"]
       19 JUMPIF                           R9 ; [+1]
       20 DUPCLOSURE                       R9 K9 [PROTO_3]
       21 GETTABLEKS                       R10 R2 K10 ["hovered"]
       23 GETUPVAL                         R12 0
       24 GETTABLEKS                       R11 R12 K11 ["createElement"]
       26 LOADK                            R12 K12 ["Frame"]
       27 DUPTABLE                         R13 K16 [{"AutomaticSize", "Size", "BackgroundTransparency", "LayoutOrder"}]
       28 GETUPVAL                         R15 1
       29 JUMPIFNOT                        R15 ; [+3]
       30 GETIMPORT                        R14 K19 [Enum.AutomaticSize.XY]
       32 JUMP                             ; [+1]
       33 LOADNIL                          R14
       34 SETTABLEKS                       R14 R13 K13 ["AutomaticSize"]
       36 GETIMPORT                        R14 K22 [UDim2.new]
       38 LOADN                            R15 1
       39 LOADN                            R16 0
       40 LOADN                            R17 0
       41 GETTABLEKS                       R18 R3 K23 ["Height"]
       43 CALL                             R14 4 1
       44 SETTABLEKS                       R14 R13 K14 ["Size"]
       46 LOADN                            R14 1
       47 SETTABLEKS                       R14 R13 K15 ["BackgroundTransparency"]
       49 SETTABLEKS                       R4 R13 K3 ["LayoutOrder"]
       51 DUPTABLE                         R14 K27 [{"Layout", "Label", "Button"}]
       52 GETUPVAL                         R16 0
       53 GETTABLEKS                       R15 R16 K11 ["createElement"]
       55 LOADK                            R16 K28 ["UIListLayout"]
       56 DUPTABLE                         R17 K31 [{"SortOrder", "FillDirection"}]
       57 GETIMPORT                        R18 K32 [Enum.SortOrder.LayoutOrder]
       59 SETTABLEKS                       R18 R17 K29 ["SortOrder"]
       61 GETIMPORT                        R18 K34 [Enum.FillDirection.Horizontal]
       63 SETTABLEKS                       R18 R17 K30 ["FillDirection"]
       65 CALL                             R15 2 1
       66 SETTABLEKS                       R15 R14 K24 ["Layout"]
       68 GETUPVAL                         R16 0
       69 GETTABLEKS                       R15 R16 K11 ["createElement"]
       71 GETUPVAL                         R16 2
       72 DUPTABLE                         R17 K39 [{"AutomaticSize", "LayoutOrder", "Size", "Text", "StyleModifier", "TextWrapped", "TextXAlignment"}]
       73 GETUPVAL                         R19 1
       74 JUMPIFNOT                        R19 ; [+3]
       75 GETIMPORT                        R18 K41 [Enum.AutomaticSize.Y]
       77 JUMP                             ; [+1]
       78 LOADNIL                          R18
       79 SETTABLEKS                       R18 R17 K13 ["AutomaticSize"]
       81 LOADN                            R18 1
       82 SETTABLEKS                       R18 R17 K3 ["LayoutOrder"]
       84 GETUPVAL                         R19 1
       85 JUMPIFNOT                        R19 ; [+9]
       86 GETIMPORT                        R18 K22 [UDim2.new]
       88 LOADN                            R19 0
       89 GETTABLEKS                       R20 R3 K42 ["LabelWidth"]
       91 LOADN                            R21 0
       92 LOADN                            R22 0
       93 CALL                             R18 4 1
       94 JUMP                             ; [+8]
       95 GETIMPORT                        R18 K22 [UDim2.new]
       97 LOADN                            R19 0
       98 GETTABLEKS                       R20 R3 K42 ["LabelWidth"]
      100 LOADN                            R21 1
      101 LOADN                            R22 0
      102 CALL                             R18 4 1
      103 SETTABLEKS                       R18 R17 K14 ["Size"]
      105 SETTABLEKS                       R5 R17 K35 ["Text"]
      107 JUMPIFNOT                        R8 ; [+2]
      108 LOADNIL                          R18
      109 JUMP                             ; [+3]
      110 GETUPVAL                         R19 3
      111 GETTABLEKS                       R18 R19 K43 ["Disabled"]
      113 SETTABLEKS                       R18 R17 K36 ["StyleModifier"]
      115 LOADB                            R18 1
      116 SETTABLEKS                       R18 R17 K37 ["TextWrapped"]
      118 GETIMPORT                        R18 K45 [Enum.TextXAlignment.Left]
      120 SETTABLEKS                       R18 R17 K38 ["TextXAlignment"]
      122 CALL                             R15 2 1
      123 SETTABLEKS                       R15 R14 K25 ["Label"]
      125 GETUPVAL                         R16 0
      126 GETTABLEKS                       R15 R16 K11 ["createElement"]
      128 LOADK                            R16 K46 ["ImageButton"]
      129 NEWTABLE                         R17 16 0
      131 LOADB                            R18 0
      132 SETTABLEKS                       R18 R17 K47 ["AutoButtonColor"]
      134 GETUPVAL                         R19 1
      135 JUMPIFNOT                        R19 ; [+3]
      136 GETIMPORT                        R18 K19 [Enum.AutomaticSize.XY]
      138 JUMP                             ; [+1]
      139 LOADNIL                          R18
      140 SETTABLEKS                       R18 R17 K13 ["AutomaticSize"]
      142 JUMPIFNOT                        R10 ; [+3]
      143 GETTABLEKS                       R18 R3 K48 ["BackgroundColorHovered"]
      145 JUMPIF                           R18 ; [+2]
      146 GETTABLEKS                       R18 R3 K49 ["BackgroundColor"]
      148 SETTABLEKS                       R18 R17 K50 ["BackgroundColor3"]
      150 LOADN                            R18 0
      151 SETTABLEKS                       R18 R17 K51 ["BorderSizePixel"]
      153 LOADN                            R18 2
      154 SETTABLEKS                       R18 R17 K3 ["LayoutOrder"]
      156 GETUPVAL                         R19 1
      157 JUMPIFNOT                        R19 ; [+9]
      158 GETIMPORT                        R18 K22 [UDim2.new]
      160 LOADN                            R19 0
      161 GETTABLEKS                       R20 R3 K52 ["ImageButtonSize"]
      163 LOADN                            R21 0
      164 LOADN                            R22 0
      165 CALL                             R18 4 1
      166 JUMP                             ; [+9]
      167 GETIMPORT                        R18 K22 [UDim2.new]
      169 LOADN                            R19 0
      170 GETTABLEKS                       R20 R3 K52 ["ImageButtonSize"]
      172 LOADN                            R21 0
      173 GETTABLEKS                       R22 R3 K52 ["ImageButtonSize"]
      175 CALL                             R18 4 1
      176 SETTABLEKS                       R18 R17 K14 ["Size"]
      178 GETUPVAL                         R20 0
      179 GETTABLEKS                       R19 R20 K53 ["Event"]
      181 GETTABLEKS                       R18 R19 K54 ["Activated"]
      183 SETTABLE                         R9 R17 R18
      184 GETUPVAL                         R20 0
      185 GETTABLEKS                       R19 R20 K53 ["Event"]
      187 GETTABLEKS                       R18 R19 K55 ["MouseEnter"]
      189 GETTABLEKS                       R19 R0 K56 ["onMouseEnter"]
      191 SETTABLE                         R19 R17 R18
      192 GETUPVAL                         R20 0
      193 GETTABLEKS                       R19 R20 K53 ["Event"]
      195 GETTABLEKS                       R18 R19 K57 ["MouseLeave"]
      197 GETTABLEKS                       R19 R0 K58 ["onMouseLeave"]
      199 SETTABLE                         R19 R17 R18
      200 NEWTABLE                         R18 4 1
      202 GETUPVAL                         R21 1
      203 JUMPIFNOT                        R21 ; [+19]
      204 GETUPVAL                         R21 0
      205 GETTABLEKS                       R20 R21 K11 ["createElement"]
      207 LOADK                            R21 K28 ["UIListLayout"]
      208 DUPTABLE                         R22 K60 [{"SortOrder", "FillDirection", "HorizontalAlignment"}]
      209 GETIMPORT                        R23 K32 [Enum.SortOrder.LayoutOrder]
      211 SETTABLEKS                       R23 R22 K29 ["SortOrder"]
      213 GETIMPORT                        R23 K62 [Enum.FillDirection.Vertical]
      215 SETTABLEKS                       R23 R22 K30 ["FillDirection"]
      217 GETIMPORT                        R23 K64 [Enum.HorizontalAlignment.Center]
      219 SETTABLEKS                       R23 R22 K59 ["HorizontalAlignment"]
      221 CALL                             R20 2 1
      222 JUMP                             ; [+1]
      223 LOADNIL                          R20
      224 SETTABLEKS                       R20 R18 K24 ["Layout"]
      226 GETUPVAL                         R21 0
      227 GETTABLEKS                       R20 R21 K11 ["createElement"]
      229 LOADK                            R21 K65 ["ImageLabel"]
      230 DUPTABLE                         R22 K69 [{"Position", "AnchorPoint", "Size", "Image", "BackgroundTransparency"}]
      231 GETUPVAL                         R24 1
      232 JUMPIFNOT                        R24 ; [+2]
      233 LOADNIL                          R23
      234 JUMP                             ; [+9]
      235 GETIMPORT                        R23 K22 [UDim2.new]
      237 LOADK                            R24 K70 [0.5]
      238 LOADN                            R25 0
      239 LOADN                            R26 0
      240 GETTABLEKS                       R28 R3 K72 ["ImageLabelSize"]
      242 DIVK                             R27 R28 K71 [2]
      243 CALL                             R23 4 1
      244 SETTABLEKS                       R23 R22 K66 ["Position"]
      246 GETUPVAL                         R24 1
      247 JUMPIFNOT                        R24 ; [+2]
      248 LOADNIL                          R23
      249 JUMP                             ; [+5]
      250 GETIMPORT                        R23 K74 [Vector2.new]
      252 LOADK                            R24 K70 [0.5]
      253 LOADK                            R25 K70 [0.5]
      254 CALL                             R23 2 1
      255 SETTABLEKS                       R23 R22 K67 ["AnchorPoint"]
      257 GETIMPORT                        R23 K22 [UDim2.new]
      259 LOADN                            R24 0
      260 GETTABLEKS                       R25 R3 K72 ["ImageLabelSize"]
      262 LOADN                            R26 0
      263 GETTABLEKS                       R27 R3 K72 ["ImageLabelSize"]
      265 CALL                             R23 4 1
      266 SETTABLEKS                       R23 R22 K14 ["Size"]
      268 SETTABLEKS                       R7 R22 K68 ["Image"]
      270 LOADN                            R23 1
      271 SETTABLEKS                       R23 R22 K15 ["BackgroundTransparency"]
      273 CALL                             R20 2 1
      274 SETTABLEKS                       R20 R18 K65 ["ImageLabel"]
      276 GETUPVAL                         R21 0
      277 GETTABLEKS                       R20 R21 K11 ["createElement"]
      279 GETUPVAL                         R21 2
      280 DUPTABLE                         R22 K76 [{"AutomaticSize", "Position", "AnchorPoint", "Size", "LayoutOrder", "Text", "StyleModifier", "Style", "TextWrapped"}]
      281 GETUPVAL                         R24 1
      282 JUMPIFNOT                        R24 ; [+3]
      283 GETIMPORT                        R23 K41 [Enum.AutomaticSize.Y]
      285 JUMP                             ; [+1]
      286 LOADNIL                          R23
      287 SETTABLEKS                       R23 R22 K13 ["AutomaticSize"]
      289 GETUPVAL                         R24 1
      290 JUMPIFNOT                        R24 ; [+2]
      291 LOADNIL                          R23
      292 JUMP                             ; [+10]
      293 GETIMPORT                        R23 K22 [UDim2.new]
      295 LOADK                            R24 K70 [0.5]
      296 LOADN                            R25 0
      297 LOADN                            R26 1
      298 GETTABLEKS                       R29 R3 K77 ["TextLabelSize"]
      300 MINUS                            R28 R29
      301 DIVK                             R27 R28 K71 [2]
      302 CALL                             R23 4 1
      303 SETTABLEKS                       R23 R22 K66 ["Position"]
      305 GETUPVAL                         R24 1
      306 JUMPIFNOT                        R24 ; [+2]
      307 LOADNIL                          R23
      308 JUMP                             ; [+5]
      309 GETIMPORT                        R23 K74 [Vector2.new]
      311 LOADK                            R24 K70 [0.5]
      312 LOADK                            R25 K70 [0.5]
      313 CALL                             R23 2 1
      314 SETTABLEKS                       R23 R22 K67 ["AnchorPoint"]
      316 GETUPVAL                         R24 1
      317 JUMPIFNOT                        R24 ; [+9]
      318 GETIMPORT                        R23 K22 [UDim2.new]
      320 LOADN                            R24 0
      321 GETTABLEKS                       R25 R3 K52 ["ImageButtonSize"]
      323 LOADN                            R26 0
      324 LOADN                            R27 0
      325 CALL                             R23 4 1
      326 JUMP                             ; [+8]
      327 GETIMPORT                        R23 K22 [UDim2.new]
      329 LOADN                            R24 1
      330 LOADN                            R25 0
      331 LOADN                            R26 0
      332 GETTABLEKS                       R27 R3 K77 ["TextLabelSize"]
      334 CALL                             R23 4 1
      335 SETTABLEKS                       R23 R22 K14 ["Size"]
      337 GETUPVAL                         R24 1
      338 JUMPIFNOT                        R24 ; [+2]
      339 LOADN                            R23 2
      340 JUMP                             ; [+1]
      341 LOADNIL                          R23
      342 SETTABLEKS                       R23 R22 K3 ["LayoutOrder"]
      344 SETTABLEKS                       R6 R22 K35 ["Text"]
      346 JUMPIFNOT                        R8 ; [+2]
      347 LOADNIL                          R23
      348 JUMP                             ; [+3]
      349 GETUPVAL                         R24 3
      350 GETTABLEKS                       R23 R24 K43 ["Disabled"]
      352 SETTABLEKS                       R23 R22 K36 ["StyleModifier"]
      354 LOADK                            R23 K25 ["Label"]
      355 SETTABLEKS                       R23 R22 K75 ["Style"]
      357 LOADB                            R23 1
      358 SETTABLEKS                       R23 R22 K37 ["TextWrapped"]
      360 CALL                             R20 2 1
      361 SETTABLEKS                       R20 R18 K78 ["TextLabel"]
      363 GETUPVAL                         R20 1
      364 JUMPIFNOT                        R20 ; [+2]
      365 LOADNIL                          R19
      366 JUMP                             ; [+9]
      367 GETUPVAL                         R20 0
      368 GETTABLEKS                       R19 R20 K11 ["createElement"]
      370 GETUPVAL                         R20 4
      371 DUPTABLE                         R21 K80 [{"Cursor"}]
      372 LOADK                            R22 K81 ["PointingHand"]
      373 SETTABLEKS                       R22 R21 K79 ["Cursor"]
      375 CALL                             R19 2 1
      376 SETLIST                          R18 R19 1 [1]
      378 CALL                             R15 3 1
      379 SETTABLEKS                       R15 R14 K26 ["Button"]
      381 CALL                             R11 3 -1
      382 RETURN                           R11 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R3 K1 [script]
        3 GETTABLEKS                       R2 R3 K2 ["Parent"]
        5 GETTABLEKS                       R1 R2 K2 ["Parent"]
        7 GETTABLEKS                       R0 R1 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R3 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R3 K6 ["Roact"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R4 R0 K5 ["Packages"]
       20 GETTABLEKS                       R3 R4 K7 ["Framework"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K9 [game]
       25 LOADK                            R5 K10 ["LocalizationToolsFixLabeledImageButton"]
       26 LOADB                            R6 0
       27 NAMECALL                         R3 R3 K11 ["DefineFastFlag"]
       29 CALL                             R3 3 1
       30 GETTABLEKS                       R4 R2 K12 ["ContextServices"]
       32 GETTABLEKS                       R5 R4 K13 ["withContext"]
       34 GETTABLEKS                       R6 R2 K14 ["UI"]
       36 GETTABLEKS                       R7 R6 K15 ["HoverArea"]
       38 GETTABLEKS                       R8 R6 K16 ["TextLabel"]
       40 GETTABLEKS                       R10 R2 K17 ["Util"]
       42 GETTABLEKS                       R9 R10 K18 ["StyleModifier"]
       44 GETTABLEKS                       R10 R1 K19 ["PureComponent"]
       46 LOADK                            R12 K20 ["LabeledImageButton"]
       47 NAMECALL                         R10 R10 K21 ["extend"]
       49 CALL                             R10 2 1
       50 DUPCLOSURE                       R11 K22 [PROTO_2]
       51 SETTABLEKS                       R11 R10 K23 ["init"]
       53 DUPCLOSURE                       R11 K24 [PROTO_4]
       54 CAPTURE                          VAL R1
       55 CAPTURE                          VAL R3
       56 CAPTURE                          VAL R8
       57 CAPTURE                          VAL R9
       58 CAPTURE                          VAL R7
       59 SETTABLEKS                       R11 R10 K25 ["render"]
       61 MOVE                             R11 R5
       62 DUPTABLE                         R12 K27 [{"Stylizer"}]
       63 GETTABLEKS                       R13 R4 K26 ["Stylizer"]
       65 SETTABLEKS                       R13 R12 K26 ["Stylizer"]
       67 CALL                             R11 1 1
       68 MOVE                             R12 R10
       69 CALL                             R11 1 1
       70 MOVE                             R10 R11
       71 RETURN                           R10 1
