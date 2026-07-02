PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["AbsoluteSize"]
        2 GETTABLEKS                       R1 R1 K1 ["X"]
        4 LOADN                            R2 285
        5 JUMPIFNOTLT                      R1 R2 ; [+7]
        7 GETUPVAL                         R1 0
        8 DUPTABLE                         R3 K8 [{["fontSize"] = 12, ["imageWidth"] = 125, ["height"] = 47}]
        9 NAMECALL                         R1 R1 K9 ["setState"]
       11 CALL                             R1 2 0
       12 RETURN                           R0 0
       13 GETTABLEKS                       R1 R0 K0 ["AbsoluteSize"]
       15 GETTABLEKS                       R1 R1 K1 ["X"]
       17 LOADN                            R2 350
       18 JUMPIFNOTLT                      R1 R2 ; [+7]
       20 GETUPVAL                         R1 0
       21 DUPTABLE                         R3 K13 [{["fontSize"] = 13, ["imageWidth"] = 150, ["height"] = 57}]
       22 NAMECALL                         R1 R1 K9 ["setState"]
       24 CALL                             R1 2 0
       25 RETURN                           R0 0
       26 GETUPVAL                         R1 0
       27 DUPTABLE                         R3 K17 [{["fontSize"] = 14, ["imageWidth"] = 197, ["height"] = 75}]
       28 NAMECALL                         R1 R1 K9 ["setState"]
       30 CALL                             R1 2 0
       31 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["createRef"]
        3 CALL                             R2 0 1
        4 SETTABLEKS                       R2 R0 K1 ["ref"]
        6 DUPTABLE                         R2 K8 [{["fontSize"] = 14, ["imageWidth"] = 197, ["height"] = 75}]
        7 SETTABLEKS                       R2 R0 K9 ["state"]
        9 NEWCLOSURE                       R2 P0
       10 CAPTURE                          VAL R0
       11 SETTABLEKS                       R2 R0 K10 ["onAbsoluteSizeChange"]
       13 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R0 K1 ["state"]
        4 GETTABLEKS                       R3 R1 K2 ["Image"]
        6 GETTABLEKS                       R4 R1 K3 ["Gradient"]
        8 GETTABLEKS                       R5 R1 K4 ["GradientOff"]
       10 GETTABLEKS                       R6 R1 K5 ["LayoutOrder"]
       12 GETTABLEKS                       R7 R1 K6 ["Text"]
       14 GETTABLEKS                       R8 R1 K7 ["OnClick"]
       16 GETTABLEKS                       R9 R2 K8 ["fontSize"]
       18 GETTABLEKS                       R10 R2 K9 ["imageWidth"]
       20 GETTABLEKS                       R11 R2 K10 ["height"]
       22 GETUPVAL                         R12 0
       23 GETTABLEKS                       R12 R12 K11 ["createElement"]
       25 LOADK                            R13 K12 ["ImageButton"]
       26 NEWTABLE                         R14 8 0
       28 LOADN                            R15 1
       29 SETTABLEKS                       R15 R14 K13 ["BackgroundTransparency"]
       31 GETIMPORT                        R15 K16 [UDim2.new]
       33 LOADN                            R16 1
       34 LOADN                            R17 0
       35 LOADN                            R18 0
       36 MOVE                             R19 R11
       37 CALL                             R15 4 1
       38 SETTABLEKS                       R15 R14 K17 ["Size"]
       40 SETTABLEKS                       R6 R14 K5 ["LayoutOrder"]
       42 GETUPVAL                         R15 0
       43 GETTABLEKS                       R15 R15 K18 ["Ref"]
       45 GETTABLEKS                       R16 R0 K19 ["ref"]
       47 SETTABLE                         R16 R14 R15
       48 GETUPVAL                         R15 0
       49 GETTABLEKS                       R15 R15 K20 ["Change"]
       51 GETTABLEKS                       R15 R15 K21 ["AbsoluteSize"]
       53 GETTABLEKS                       R16 R0 K22 ["onAbsoluteSizeChange"]
       55 SETTABLE                         R16 R14 R15
       56 GETUPVAL                         R15 0
       57 GETTABLEKS                       R15 R15 K23 ["Event"]
       59 GETTABLEKS                       R15 R15 K24 ["MouseButton1Click"]
       61 SETTABLE                         R8 R14 R15
       62 NEWTABLE                         R15 1 1
       64 GETUPVAL                         R17 0
       65 GETTABLEKS                       R17 R17 K11 ["createElement"]
       67 GETUPVAL                         R18 1
       68 DUPTABLE                         R19 K27 [{["Cursor"] = "PointingHand"}]
       69 CALL                             R17 2 1
       70 SETTABLEKS                       R17 R15 K28 ["HoverArea"]
       72 GETUPVAL                         R16 0
       73 GETTABLEKS                       R16 R16 K11 ["createElement"]
       75 LOADK                            R17 K29 ["Frame"]
       76 DUPTABLE                         R18 K30 [{"Size"}]
       77 GETIMPORT                        R19 K16 [UDim2.new]
       79 LOADN                            R20 1
       80 LOADN                            R21 0
       81 LOADN                            R22 1
       82 LOADN                            R23 0
       83 CALL                             R19 4 1
       84 SETTABLEKS                       R19 R18 K17 ["Size"]
       86 DUPTABLE                         R19 K33 [{"UIGradient", "UIListLayout", "Text", "Image"}]
       87 GETUPVAL                         R20 0
       88 GETTABLEKS                       R20 R20 K11 ["createElement"]
       90 LOADK                            R21 K31 ["UIGradient"]
       91 DUPTABLE                         R22 K36 [{"Color", "Offset"}]
       92 SETTABLEKS                       R4 R22 K34 ["Color"]
       94 SETTABLEKS                       R5 R22 K35 ["Offset"]
       96 CALL                             R20 2 1
       97 SETTABLEKS                       R20 R19 K31 ["UIGradient"]
       99 GETUPVAL                         R20 0
      100 GETTABLEKS                       R20 R20 K11 ["createElement"]
      102 LOADK                            R21 K32 ["UIListLayout"]
      103 DUPTABLE                         R22 K42 [{"FillDirection", "HorizontalAlignment", "VerticalAlignment", "SortOrder", "Padding"}]
      104 GETIMPORT                        R23 K45 [Enum.FillDirection.Horizontal]
      106 SETTABLEKS                       R23 R22 K37 ["FillDirection"]
      108 GETIMPORT                        R23 K47 [Enum.HorizontalAlignment.Center]
      110 SETTABLEKS                       R23 R22 K38 ["HorizontalAlignment"]
      112 GETIMPORT                        R23 K48 [Enum.VerticalAlignment.Center]
      114 SETTABLEKS                       R23 R22 K39 ["VerticalAlignment"]
      116 GETIMPORT                        R23 K49 [Enum.SortOrder.LayoutOrder]
      118 SETTABLEKS                       R23 R22 K40 ["SortOrder"]
      120 GETIMPORT                        R23 K51 [UDim.new]
      122 LOADN                            R24 0
      123 LOADN                            R25 10
      124 CALL                             R23 2 1
      125 SETTABLEKS                       R23 R22 K41 ["Padding"]
      127 CALL                             R20 2 1
      128 SETTABLEKS                       R20 R19 K32 ["UIListLayout"]
      130 GETUPVAL                         R20 0
      131 GETTABLEKS                       R20 R20 K11 ["createElement"]
      133 LOADK                            R21 K52 ["TextLabel"]
      134 DUPTABLE                         R22 K60 [{["Size"], ["BackgroundTransparency"] = 1, ["Font"], ["Text"], ["TextColor3"], ["TextSize"], ["TextWrapped"] = True, ["TextXAlignment"]}]
      135 GETIMPORT                        R23 K16 [UDim2.new]
      137 LOADN                            R24 1
      138 MINUS                            R26 R10
      139 SUBK                             R25 R26 K61 [10]
      140 LOADN                            R26 1
      141 LOADN                            R27 0
      142 CALL                             R23 4 1
      143 SETTABLEKS                       R23 R22 K17 ["Size"]
      145 GETUPVAL                         R24 2
      146 JUMPIFNOT                        R24 ; [+3]
      147 GETIMPORT                        R23 K63 [Enum.Font.MontserratBold]
      149 JUMP                             ; [+2]
      150 GETIMPORT                        R23 K65 [Enum.Font.GothamSemibold]
      152 SETTABLEKS                       R23 R22 K54 ["Font"]
      154 MOVE                             R24 R7
      155 LOADK                            R25 K66 ["  >"]
      156 CONCAT                           R23 R24 R25
      157 SETTABLEKS                       R23 R22 K6 ["Text"]
      159 GETIMPORT                        R23 K69 [Color3.fromHex]
      161 LOADK                            R24 K70 ["#FFFFFF"]
      162 CALL                             R23 1 1
      163 SETTABLEKS                       R23 R22 K55 ["TextColor3"]
      165 SETTABLEKS                       R9 R22 K56 ["TextSize"]
      167 GETIMPORT                        R23 K72 [Enum.TextXAlignment.Left]
      169 SETTABLEKS                       R23 R22 K59 ["TextXAlignment"]
      171 DUPTABLE                         R23 K73 [{"UIListLayout", "Padding", "Text"}]
      172 GETUPVAL                         R24 0
      173 GETTABLEKS                       R24 R24 K11 ["createElement"]
      175 LOADK                            R25 K32 ["UIListLayout"]
      176 DUPTABLE                         R26 K74 [{"FillDirection", "VerticalAlignment", "SortOrder"}]
      177 GETIMPORT                        R27 K45 [Enum.FillDirection.Horizontal]
      179 SETTABLEKS                       R27 R26 K37 ["FillDirection"]
      181 GETIMPORT                        R27 K48 [Enum.VerticalAlignment.Center]
      183 SETTABLEKS                       R27 R26 K39 ["VerticalAlignment"]
      185 GETIMPORT                        R27 K49 [Enum.SortOrder.LayoutOrder]
      187 SETTABLEKS                       R27 R26 K40 ["SortOrder"]
      189 CALL                             R24 2 1
      190 SETTABLEKS                       R24 R23 K32 ["UIListLayout"]
      192 GETUPVAL                         R24 0
      193 GETTABLEKS                       R24 R24 K11 ["createElement"]
      195 LOADK                            R25 K75 ["UIPadding"]
      196 DUPTABLE                         R26 K77 [{"PaddingLeft"}]
      197 GETIMPORT                        R27 K51 [UDim.new]
      199 LOADN                            R28 0
      200 LOADN                            R29 14
      201 CALL                             R27 2 1
      202 SETTABLEKS                       R27 R26 K76 ["PaddingLeft"]
      204 CALL                             R24 2 1
      205 SETTABLEKS                       R24 R23 K41 ["Padding"]
      207 GETUPVAL                         R24 0
      208 GETTABLEKS                       R24 R24 K11 ["createElement"]
      210 LOADK                            R25 K52 ["TextLabel"]
      211 DUPTABLE                         R26 K60 [{["Size"], ["BackgroundTransparency"] = 1, ["Font"], ["Text"], ["TextColor3"], ["TextSize"], ["TextWrapped"] = True, ["TextXAlignment"]}]
      212 GETIMPORT                        R27 K16 [UDim2.new]
      214 LOADN                            R28 1
      215 LOADN                            R29 0
      216 LOADN                            R30 1
      217 LOADN                            R31 0
      218 CALL                             R27 4 1
      219 SETTABLEKS                       R27 R26 K17 ["Size"]
      221 GETUPVAL                         R28 2
      222 JUMPIFNOT                        R28 ; [+3]
      223 GETIMPORT                        R27 K63 [Enum.Font.MontserratBold]
      225 JUMP                             ; [+2]
      226 GETIMPORT                        R27 K65 [Enum.Font.GothamSemibold]
      228 SETTABLEKS                       R27 R26 K54 ["Font"]
      230 MOVE                             R28 R7
      231 LOADK                            R29 K66 ["  >"]
      232 CONCAT                           R27 R28 R29
      233 SETTABLEKS                       R27 R26 K6 ["Text"]
      235 GETIMPORT                        R27 K69 [Color3.fromHex]
      237 LOADK                            R28 K70 ["#FFFFFF"]
      238 CALL                             R27 1 1
      239 SETTABLEKS                       R27 R26 K55 ["TextColor3"]
      241 SETTABLEKS                       R9 R26 K56 ["TextSize"]
      243 GETIMPORT                        R27 K72 [Enum.TextXAlignment.Left]
      245 SETTABLEKS                       R27 R26 K59 ["TextXAlignment"]
      247 CALL                             R24 2 1
      248 SETTABLEKS                       R24 R23 K6 ["Text"]
      250 CALL                             R20 3 1
      251 SETTABLEKS                       R20 R19 K6 ["Text"]
      253 GETUPVAL                         R20 0
      254 GETTABLEKS                       R20 R20 K11 ["createElement"]
      256 LOADK                            R21 K78 ["ImageLabel"]
      257 DUPTABLE                         R22 K80 [{["LayoutOrder"] = 2, ["Size"], ["BackgroundTransparency"] = 1, ["Image"]}]
      258 GETIMPORT                        R23 K16 [UDim2.new]
      260 LOADN                            R24 0
      261 MOVE                             R25 R10
      262 LOADN                            R26 1
      263 LOADN                            R27 0
      264 CALL                             R23 4 1
      265 SETTABLEKS                       R23 R22 K17 ["Size"]
      267 SETTABLEKS                       R3 R22 K2 ["Image"]
      269 CALL                             R20 2 1
      270 SETTABLEKS                       R20 R19 K2 ["Image"]
      272 CALL                             R16 3 -1
      273 SETLIST                          R15 R16 -1 [1]
      275 CALL                             R12 3 -1
      276 RETURN                           R12 -1

PROTO_3:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["createElement"]
        3 GETUPVAL                         R3 1
        4 MOVE                             R4 R0
        5 MOVE                             R5 R1
        6 CALL                             R2 3 -1
        7 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Toolbox"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Packages"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["Roact"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R1 K8 ["Framework"]
       18 CALL                             R3 1 1
       19 GETTABLEKS                       R4 R3 K9 ["UI"]
       21 GETTABLEKS                       R4 R4 K10 ["HoverArea"]
       23 GETTABLEKS                       R5 R2 K11 ["PureComponent"]
       25 LOADK                            R7 K12 ["CallToActionBanner"]
       26 NAMECALL                         R5 R5 K13 ["extend"]
       28 CALL                             R5 2 1
       29 GETIMPORT                        R6 K15 [game]
       31 LOADK                            R8 K16 ["ToolboxRetireGotham"]
       32 LOADB                            R9 0
       33 NAMECALL                         R6 R6 K17 ["DefineFastFlag"]
       35 CALL                             R6 3 1
       36 DUPTABLE                         R7 K20 [{"Gradient", "GradientOff"}]
       37 GETIMPORT                        R8 K23 [ColorSequence.new]
       39 NEWTABLE                         R9 0 2
       41 GETIMPORT                        R10 K25 [ColorSequenceKeypoint.new]
       43 LOADN                            R11 0
       44 GETIMPORT                        R12 K28 [Color3.fromHex]
       46 LOADK                            R13 K29 ["#0C2859"]
       47 CALL                             R12 1 -1
       48 CALL                             R10 -1 1
       49 GETIMPORT                        R11 K25 [ColorSequenceKeypoint.new]
       51 LOADN                            R12 1
       52 GETIMPORT                        R13 K28 [Color3.fromHex]
       54 LOADK                            R14 K30 ["#B8425f"]
       55 CALL                             R13 1 -1
       56 CALL                             R11 -1 -1
       57 SETLIST                          R9 R10 -1 [1]
       59 CALL                             R8 1 1
       60 SETTABLEKS                       R8 R7 K18 ["Gradient"]
       62 GETIMPORT                        R8 K32 [Vector2.new]
       64 LOADK                            R9 K33 [-0.34]
       65 LOADN                            R10 0
       66 CALL                             R8 2 1
       67 SETTABLEKS                       R8 R7 K19 ["GradientOff"]
       69 SETTABLEKS                       R7 R5 K34 ["defaultProps"]
       71 DUPCLOSURE                       R7 K35 [PROTO_1]
       72 CAPTURE                          VAL R2
       73 SETTABLEKS                       R7 R5 K36 ["init"]
       75 DUPCLOSURE                       R7 K37 [PROTO_2]
       76 CAPTURE                          VAL R2
       77 CAPTURE                          VAL R4
       78 CAPTURE                          VAL R6
       79 SETTABLEKS                       R7 R5 K38 ["render"]
       81 DUPCLOSURE                       R7 K39 [PROTO_3]
       82 CAPTURE                          VAL R2
       83 CAPTURE                          VAL R5
       84 SETGLOBAL                        R7 K40 ["TypedCallToActionBanner"]
       86 DUPTABLE                         R7 K43 [{"Component", "Generator"}]
       87 SETTABLEKS                       R5 R7 K41 ["Component"]
       89 GETGLOBAL                        R8 K40 ["TypedCallToActionBanner"]
       91 SETTABLEKS                       R8 R7 K42 ["Generator"]
       93 RETURN                           R7 1
