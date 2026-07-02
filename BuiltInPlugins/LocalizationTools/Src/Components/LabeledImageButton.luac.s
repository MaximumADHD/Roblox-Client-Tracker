PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R1 R0 K1 ["Active"]
        5 JUMPIF                           R1 ; [+1]
        6 RETURN                           R0 0
        7 GETUPVAL                         R2 0
        8 DUPTABLE                         R4 K4 [{["hovered"] = True}]
        9 NAMECALL                         R2 R2 K5 ["setState"]
       11 CALL                             R2 2 0
       12 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R1 R0 K1 ["Active"]
        5 JUMPIF                           R1 ; [+1]
        6 RETURN                           R0 0
        7 GETUPVAL                         R2 0
        8 DUPTABLE                         R4 K4 [{["hovered"] = False}]
        9 NAMECALL                         R2 R2 K5 ["setState"]
       11 CALL                             R2 2 0
       12 RETURN                           R0 0

PROTO_2:
        0 DUPTABLE                         R1 K2 [{[1] = False}]
        1 SETTABLEKS                       R1 R0 K3 ["state"]
        3 NEWCLOSURE                       R1 P0
        4 CAPTURE                          VAL R0
        5 SETTABLEKS                       R1 R0 K4 ["onMouseEnter"]
        7 NEWCLOSURE                       R1 P1
        8 CAPTURE                          VAL R0
        9 SETTABLEKS                       R1 R0 K5 ["onMouseLeave"]
       11 RETURN                           R0 0

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
       23 GETUPVAL                         R11 0
       24 GETTABLEKS                       R11 R11 K11 ["createElement"]
       26 LOADK                            R12 K12 ["Frame"]
       27 DUPTABLE                         R13 K17 [{["AutomaticSize"], ["Size"], ["BackgroundTransparency"] = 1, ["LayoutOrder"]}]
       28 GETUPVAL                         R15 1
       29 JUMPIFNOT                        R15 ; [+3]
       30 GETIMPORT                        R14 K20 [Enum.AutomaticSize.XY]
       32 JUMP                             ; [+1]
       33 LOADNIL                          R14
       34 SETTABLEKS                       R14 R13 K13 ["AutomaticSize"]
       36 GETIMPORT                        R14 K23 [UDim2.new]
       38 LOADN                            R15 1
       39 LOADN                            R16 0
       40 LOADN                            R17 0
       41 GETTABLEKS                       R18 R3 K24 ["Height"]
       43 CALL                             R14 4 1
       44 SETTABLEKS                       R14 R13 K14 ["Size"]
       46 SETTABLEKS                       R4 R13 K3 ["LayoutOrder"]
       48 DUPTABLE                         R14 K28 [{"Layout", "Label", "Button"}]
       49 GETUPVAL                         R15 0
       50 GETTABLEKS                       R15 R15 K11 ["createElement"]
       52 LOADK                            R16 K29 ["UIListLayout"]
       53 DUPTABLE                         R17 K32 [{"SortOrder", "FillDirection"}]
       54 GETIMPORT                        R18 K33 [Enum.SortOrder.LayoutOrder]
       56 SETTABLEKS                       R18 R17 K30 ["SortOrder"]
       58 GETIMPORT                        R18 K35 [Enum.FillDirection.Horizontal]
       60 SETTABLEKS                       R18 R17 K31 ["FillDirection"]
       62 CALL                             R15 2 1
       63 SETTABLEKS                       R15 R14 K25 ["Layout"]
       65 GETUPVAL                         R15 0
       66 GETTABLEKS                       R15 R15 K11 ["createElement"]
       68 GETUPVAL                         R16 2
       69 DUPTABLE                         R17 K41 [{["AutomaticSize"], ["LayoutOrder"] = 1, ["Size"], ["Text"], ["StyleModifier"], ["TextWrapped"] = True, ["TextXAlignment"]}]
       70 GETUPVAL                         R19 1
       71 JUMPIFNOT                        R19 ; [+3]
       72 GETIMPORT                        R18 K43 [Enum.AutomaticSize.Y]
       74 JUMP                             ; [+1]
       75 LOADNIL                          R18
       76 SETTABLEKS                       R18 R17 K13 ["AutomaticSize"]
       78 GETUPVAL                         R19 1
       79 JUMPIFNOT                        R19 ; [+9]
       80 GETIMPORT                        R18 K23 [UDim2.new]
       82 LOADN                            R19 0
       83 GETTABLEKS                       R20 R3 K44 ["LabelWidth"]
       85 LOADN                            R21 0
       86 LOADN                            R22 0
       87 CALL                             R18 4 1
       88 JUMP                             ; [+8]
       89 GETIMPORT                        R18 K23 [UDim2.new]
       91 LOADN                            R19 0
       92 GETTABLEKS                       R20 R3 K44 ["LabelWidth"]
       94 LOADN                            R21 1
       95 LOADN                            R22 0
       96 CALL                             R18 4 1
       97 SETTABLEKS                       R18 R17 K14 ["Size"]
       99 SETTABLEKS                       R5 R17 K36 ["Text"]
      101 JUMPIFNOT                        R8 ; [+2]
      102 LOADNIL                          R18
      103 JUMP                             ; [+3]
      104 GETUPVAL                         R18 3
      105 GETTABLEKS                       R18 R18 K45 ["Disabled"]
      107 SETTABLEKS                       R18 R17 K37 ["StyleModifier"]
      109 GETIMPORT                        R18 K47 [Enum.TextXAlignment.Left]
      111 SETTABLEKS                       R18 R17 K40 ["TextXAlignment"]
      113 CALL                             R15 2 1
      114 SETTABLEKS                       R15 R14 K26 ["Label"]
      116 GETUPVAL                         R15 0
      117 GETTABLEKS                       R15 R15 K11 ["createElement"]
      119 LOADK                            R16 K48 ["ImageButton"]
      120 NEWTABLE                         R17 16 0
      122 LOADB                            R18 0
      123 SETTABLEKS                       R18 R17 K49 ["AutoButtonColor"]
      125 GETUPVAL                         R19 1
      126 JUMPIFNOT                        R19 ; [+3]
      127 GETIMPORT                        R18 K20 [Enum.AutomaticSize.XY]
      129 JUMP                             ; [+1]
      130 LOADNIL                          R18
      131 SETTABLEKS                       R18 R17 K13 ["AutomaticSize"]
      133 JUMPIFNOT                        R10 ; [+3]
      134 GETTABLEKS                       R18 R3 K50 ["BackgroundColorHovered"]
      136 JUMPIF                           R18 ; [+2]
      137 GETTABLEKS                       R18 R3 K51 ["BackgroundColor"]
      139 SETTABLEKS                       R18 R17 K52 ["BackgroundColor3"]
      141 LOADN                            R18 0
      142 SETTABLEKS                       R18 R17 K53 ["BorderSizePixel"]
      144 LOADN                            R18 2
      145 SETTABLEKS                       R18 R17 K3 ["LayoutOrder"]
      147 GETUPVAL                         R19 1
      148 JUMPIFNOT                        R19 ; [+9]
      149 GETIMPORT                        R18 K23 [UDim2.new]
      151 LOADN                            R19 0
      152 GETTABLEKS                       R20 R3 K54 ["ImageButtonSize"]
      154 LOADN                            R21 0
      155 LOADN                            R22 0
      156 CALL                             R18 4 1
      157 JUMP                             ; [+9]
      158 GETIMPORT                        R18 K23 [UDim2.new]
      160 LOADN                            R19 0
      161 GETTABLEKS                       R20 R3 K54 ["ImageButtonSize"]
      163 LOADN                            R21 0
      164 GETTABLEKS                       R22 R3 K54 ["ImageButtonSize"]
      166 CALL                             R18 4 1
      167 SETTABLEKS                       R18 R17 K14 ["Size"]
      169 GETUPVAL                         R18 0
      170 GETTABLEKS                       R18 R18 K55 ["Event"]
      172 GETTABLEKS                       R18 R18 K56 ["Activated"]
      174 SETTABLE                         R9 R17 R18
      175 GETUPVAL                         R18 0
      176 GETTABLEKS                       R18 R18 K55 ["Event"]
      178 GETTABLEKS                       R18 R18 K57 ["MouseEnter"]
      180 GETTABLEKS                       R19 R0 K58 ["onMouseEnter"]
      182 SETTABLE                         R19 R17 R18
      183 GETUPVAL                         R18 0
      184 GETTABLEKS                       R18 R18 K55 ["Event"]
      186 GETTABLEKS                       R18 R18 K59 ["MouseLeave"]
      188 GETTABLEKS                       R19 R0 K60 ["onMouseLeave"]
      190 SETTABLE                         R19 R17 R18
      191 NEWTABLE                         R18 4 1
      193 GETUPVAL                         R21 1
      194 JUMPIFNOT                        R21 ; [+19]
      195 GETUPVAL                         R20 0
      196 GETTABLEKS                       R20 R20 K11 ["createElement"]
      198 LOADK                            R21 K29 ["UIListLayout"]
      199 DUPTABLE                         R22 K62 [{"SortOrder", "FillDirection", "HorizontalAlignment"}]
      200 GETIMPORT                        R23 K33 [Enum.SortOrder.LayoutOrder]
      202 SETTABLEKS                       R23 R22 K30 ["SortOrder"]
      204 GETIMPORT                        R23 K64 [Enum.FillDirection.Vertical]
      206 SETTABLEKS                       R23 R22 K31 ["FillDirection"]
      208 GETIMPORT                        R23 K66 [Enum.HorizontalAlignment.Center]
      210 SETTABLEKS                       R23 R22 K61 ["HorizontalAlignment"]
      212 CALL                             R20 2 1
      213 JUMP                             ; [+1]
      214 LOADNIL                          R20
      215 SETTABLEKS                       R20 R18 K25 ["Layout"]
      217 GETUPVAL                         R20 0
      218 GETTABLEKS                       R20 R20 K11 ["createElement"]
      220 LOADK                            R21 K67 ["ImageLabel"]
      221 DUPTABLE                         R22 K71 [{["Position"], ["AnchorPoint"], ["Size"], ["Image"], ["BackgroundTransparency"] = 1}]
      222 GETUPVAL                         R24 1
      223 JUMPIFNOT                        R24 ; [+2]
      224 LOADNIL                          R23
      225 JUMP                             ; [+9]
      226 GETIMPORT                        R23 K23 [UDim2.new]
      228 LOADK                            R24 K72 [0.5]
      229 LOADN                            R25 0
      230 LOADN                            R26 0
      231 GETTABLEKS                       R28 R3 K74 ["ImageLabelSize"]
      233 DIVK                             R27 R28 K73 [2]
      234 CALL                             R23 4 1
      235 SETTABLEKS                       R23 R22 K68 ["Position"]
      237 GETUPVAL                         R24 1
      238 JUMPIFNOT                        R24 ; [+2]
      239 LOADNIL                          R23
      240 JUMP                             ; [+5]
      241 GETIMPORT                        R23 K76 [Vector2.new]
      243 LOADK                            R24 K72 [0.5]
      244 LOADK                            R25 K72 [0.5]
      245 CALL                             R23 2 1
      246 SETTABLEKS                       R23 R22 K69 ["AnchorPoint"]
      248 GETIMPORT                        R23 K23 [UDim2.new]
      250 LOADN                            R24 0
      251 GETTABLEKS                       R25 R3 K74 ["ImageLabelSize"]
      253 LOADN                            R26 0
      254 GETTABLEKS                       R27 R3 K74 ["ImageLabelSize"]
      256 CALL                             R23 4 1
      257 SETTABLEKS                       R23 R22 K14 ["Size"]
      259 SETTABLEKS                       R7 R22 K70 ["Image"]
      261 CALL                             R20 2 1
      262 SETTABLEKS                       R20 R18 K67 ["ImageLabel"]
      264 GETUPVAL                         R20 0
      265 GETTABLEKS                       R20 R20 K11 ["createElement"]
      267 GETUPVAL                         R21 2
      268 DUPTABLE                         R22 K78 [{["AutomaticSize"], ["Position"], ["AnchorPoint"], ["Size"], ["LayoutOrder"], ["Text"], ["StyleModifier"], ["Style"] = "Label", ["TextWrapped"] = True}]
      269 GETUPVAL                         R24 1
      270 JUMPIFNOT                        R24 ; [+3]
      271 GETIMPORT                        R23 K43 [Enum.AutomaticSize.Y]
      273 JUMP                             ; [+1]
      274 LOADNIL                          R23
      275 SETTABLEKS                       R23 R22 K13 ["AutomaticSize"]
      277 GETUPVAL                         R24 1
      278 JUMPIFNOT                        R24 ; [+2]
      279 LOADNIL                          R23
      280 JUMP                             ; [+10]
      281 GETIMPORT                        R23 K23 [UDim2.new]
      283 LOADK                            R24 K72 [0.5]
      284 LOADN                            R25 0
      285 LOADN                            R26 1
      286 GETTABLEKS                       R29 R3 K79 ["TextLabelSize"]
      288 MINUS                            R28 R29
      289 DIVK                             R27 R28 K73 [2]
      290 CALL                             R23 4 1
      291 SETTABLEKS                       R23 R22 K68 ["Position"]
      293 GETUPVAL                         R24 1
      294 JUMPIFNOT                        R24 ; [+2]
      295 LOADNIL                          R23
      296 JUMP                             ; [+5]
      297 GETIMPORT                        R23 K76 [Vector2.new]
      299 LOADK                            R24 K72 [0.5]
      300 LOADK                            R25 K72 [0.5]
      301 CALL                             R23 2 1
      302 SETTABLEKS                       R23 R22 K69 ["AnchorPoint"]
      304 GETUPVAL                         R24 1
      305 JUMPIFNOT                        R24 ; [+9]
      306 GETIMPORT                        R23 K23 [UDim2.new]
      308 LOADN                            R24 0
      309 GETTABLEKS                       R25 R3 K54 ["ImageButtonSize"]
      311 LOADN                            R26 0
      312 LOADN                            R27 0
      313 CALL                             R23 4 1
      314 JUMP                             ; [+8]
      315 GETIMPORT                        R23 K23 [UDim2.new]
      317 LOADN                            R24 1
      318 LOADN                            R25 0
      319 LOADN                            R26 0
      320 GETTABLEKS                       R27 R3 K79 ["TextLabelSize"]
      322 CALL                             R23 4 1
      323 SETTABLEKS                       R23 R22 K14 ["Size"]
      325 GETUPVAL                         R24 1
      326 JUMPIFNOT                        R24 ; [+2]
      327 LOADN                            R23 2
      328 JUMP                             ; [+1]
      329 LOADNIL                          R23
      330 SETTABLEKS                       R23 R22 K3 ["LayoutOrder"]
      332 SETTABLEKS                       R6 R22 K36 ["Text"]
      334 JUMPIFNOT                        R8 ; [+2]
      335 LOADNIL                          R23
      336 JUMP                             ; [+3]
      337 GETUPVAL                         R23 3
      338 GETTABLEKS                       R23 R23 K45 ["Disabled"]
      340 SETTABLEKS                       R23 R22 K37 ["StyleModifier"]
      342 CALL                             R20 2 1
      343 SETTABLEKS                       R20 R18 K80 ["TextLabel"]
      345 GETUPVAL                         R20 1
      346 JUMPIFNOT                        R20 ; [+2]
      347 LOADNIL                          R19
      348 JUMP                             ; [+6]
      349 GETUPVAL                         R19 0
      350 GETTABLEKS                       R19 R19 K11 ["createElement"]
      352 GETUPVAL                         R20 4
      353 DUPTABLE                         R21 K83 [{["Cursor"] = "PointingHand"}]
      354 CALL                             R19 2 1
      355 SETLIST                          R18 R19 1 [1]
      357 CALL                             R15 3 1
      358 SETTABLEKS                       R15 R14 K27 ["Button"]
      360 CALL                             R11 3 -1
      361 RETURN                           R11 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R2 K6 ["Roact"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R3 R0 K5 ["Packages"]
       20 GETTABLEKS                       R3 R3 K7 ["Framework"]
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
       40 GETTABLEKS                       R9 R2 K17 ["Util"]
       42 GETTABLEKS                       R9 R9 K18 ["StyleModifier"]
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
