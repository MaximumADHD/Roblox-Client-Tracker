PROTO_0:
        0 GETTABLEKS                       R2 R0 K0 ["AbsoluteSize"]
        2 GETTABLEKS                       R1 R2 K1 ["X"]
        4 LOADN                            R2 29
        5 JUMPIFNOTLT                      R1 R2 ; [+16]
        7 GETUPVAL                         R1 0
        8 DUPTABLE                         R3 K5 [{"fontSize", "imageWidth", "height"}]
        9 LOADN                            R4 12
       10 SETTABLEKS                       R4 R3 K2 ["fontSize"]
       12 LOADN                            R4 125
       13 SETTABLEKS                       R4 R3 K3 ["imageWidth"]
       15 LOADN                            R4 47
       16 SETTABLEKS                       R4 R3 K4 ["height"]
       18 NAMECALL                         R1 R1 K6 ["setState"]
       20 CALL                             R1 2 0
       21 RETURN                           R0 0
       22 GETTABLEKS                       R2 R0 K0 ["AbsoluteSize"]
       24 GETTABLEKS                       R1 R2 K1 ["X"]
       26 LOADN                            R2 94
       27 JUMPIFNOTLT                      R1 R2 ; [+16]
       29 GETUPVAL                         R1 0
       30 DUPTABLE                         R3 K5 [{"fontSize", "imageWidth", "height"}]
       31 LOADN                            R4 13
       32 SETTABLEKS                       R4 R3 K2 ["fontSize"]
       34 LOADN                            R4 150
       35 SETTABLEKS                       R4 R3 K3 ["imageWidth"]
       37 LOADN                            R4 57
       38 SETTABLEKS                       R4 R3 K4 ["height"]
       40 NAMECALL                         R1 R1 K6 ["setState"]
       42 CALL                             R1 2 0
       43 RETURN                           R0 0
       44 GETUPVAL                         R1 0
       45 DUPTABLE                         R3 K5 [{"fontSize", "imageWidth", "height"}]
       46 LOADN                            R4 14
       47 SETTABLEKS                       R4 R3 K2 ["fontSize"]
       49 LOADN                            R4 197
       50 SETTABLEKS                       R4 R3 K3 ["imageWidth"]
       52 LOADN                            R4 75
       53 SETTABLEKS                       R4 R3 K4 ["height"]
       55 NAMECALL                         R1 R1 K6 ["setState"]
       57 CALL                             R1 2 0
       58 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["createRef"]
        3 CALL                             R2 0 1
        4 SETTABLEKS                       R2 R0 K1 ["ref"]
        6 DUPTABLE                         R2 K5 [{"fontSize", "imageWidth", "height"}]
        7 LOADN                            R3 14
        8 SETTABLEKS                       R3 R2 K2 ["fontSize"]
       10 LOADN                            R3 197
       11 SETTABLEKS                       R3 R2 K3 ["imageWidth"]
       13 LOADN                            R3 75
       14 SETTABLEKS                       R3 R2 K4 ["height"]
       16 SETTABLEKS                       R2 R0 K6 ["state"]
       18 NEWCLOSURE                       R2 P0
       19 CAPTURE                          VAL R0
       20 SETTABLEKS                       R2 R0 K7 ["onAbsoluteSizeChange"]
       22 RETURN                           R0 0

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
       22 GETUPVAL                         R13 0
       23 GETTABLEKS                       R12 R13 K11 ["createElement"]
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
       42 GETUPVAL                         R16 0
       43 GETTABLEKS                       R15 R16 K18 ["Ref"]
       45 GETTABLEKS                       R16 R0 K19 ["ref"]
       47 SETTABLE                         R16 R14 R15
       48 GETUPVAL                         R17 0
       49 GETTABLEKS                       R16 R17 K20 ["Change"]
       51 GETTABLEKS                       R15 R16 K21 ["AbsoluteSize"]
       53 GETTABLEKS                       R16 R0 K22 ["onAbsoluteSizeChange"]
       55 SETTABLE                         R16 R14 R15
       56 GETUPVAL                         R17 0
       57 GETTABLEKS                       R16 R17 K23 ["Event"]
       59 GETTABLEKS                       R15 R16 K24 ["MouseButton1Click"]
       61 SETTABLE                         R8 R14 R15
       62 NEWTABLE                         R15 1 1
       64 GETUPVAL                         R18 0
       65 GETTABLEKS                       R17 R18 K11 ["createElement"]
       67 GETUPVAL                         R18 1
       68 DUPTABLE                         R19 K26 [{"Cursor"}]
       69 LOADK                            R20 K27 ["PointingHand"]
       70 SETTABLEKS                       R20 R19 K25 ["Cursor"]
       72 CALL                             R17 2 1
       73 SETTABLEKS                       R17 R15 K28 ["HoverArea"]
       75 GETUPVAL                         R17 0
       76 GETTABLEKS                       R16 R17 K11 ["createElement"]
       78 LOADK                            R17 K29 ["Frame"]
       79 DUPTABLE                         R18 K30 [{"Size"}]
       80 GETIMPORT                        R19 K16 [UDim2.new]
       82 LOADN                            R20 1
       83 LOADN                            R21 0
       84 LOADN                            R22 1
       85 LOADN                            R23 0
       86 CALL                             R19 4 1
       87 SETTABLEKS                       R19 R18 K17 ["Size"]
       89 DUPTABLE                         R19 K33 [{"UIGradient", "UIListLayout", "Text", "Image"}]
       90 GETUPVAL                         R21 0
       91 GETTABLEKS                       R20 R21 K11 ["createElement"]
       93 LOADK                            R21 K31 ["UIGradient"]
       94 DUPTABLE                         R22 K36 [{"Color", "Offset"}]
       95 SETTABLEKS                       R4 R22 K34 ["Color"]
       97 SETTABLEKS                       R5 R22 K35 ["Offset"]
       99 CALL                             R20 2 1
      100 SETTABLEKS                       R20 R19 K31 ["UIGradient"]
      102 GETUPVAL                         R21 0
      103 GETTABLEKS                       R20 R21 K11 ["createElement"]
      105 LOADK                            R21 K32 ["UIListLayout"]
      106 DUPTABLE                         R22 K42 [{"FillDirection", "HorizontalAlignment", "VerticalAlignment", "SortOrder", "Padding"}]
      107 GETIMPORT                        R23 K45 [Enum.FillDirection.Horizontal]
      109 SETTABLEKS                       R23 R22 K37 ["FillDirection"]
      111 GETIMPORT                        R23 K47 [Enum.HorizontalAlignment.Center]
      113 SETTABLEKS                       R23 R22 K38 ["HorizontalAlignment"]
      115 GETIMPORT                        R23 K48 [Enum.VerticalAlignment.Center]
      117 SETTABLEKS                       R23 R22 K39 ["VerticalAlignment"]
      119 GETIMPORT                        R23 K49 [Enum.SortOrder.LayoutOrder]
      121 SETTABLEKS                       R23 R22 K40 ["SortOrder"]
      123 GETIMPORT                        R23 K51 [UDim.new]
      125 LOADN                            R24 0
      126 LOADN                            R25 10
      127 CALL                             R23 2 1
      128 SETTABLEKS                       R23 R22 K41 ["Padding"]
      130 CALL                             R20 2 1
      131 SETTABLEKS                       R20 R19 K32 ["UIListLayout"]
      133 GETUPVAL                         R21 0
      134 GETTABLEKS                       R20 R21 K11 ["createElement"]
      136 LOADK                            R21 K52 ["TextLabel"]
      137 DUPTABLE                         R22 K58 [{"Size", "BackgroundTransparency", "Font", "Text", "TextColor3", "TextSize", "TextWrapped", "TextXAlignment"}]
      138 GETIMPORT                        R23 K16 [UDim2.new]
      140 LOADN                            R24 1
      141 MINUS                            R26 R10
      142 SUBK                             R25 R26 K59 [10]
      143 LOADN                            R26 1
      144 LOADN                            R27 0
      145 CALL                             R23 4 1
      146 SETTABLEKS                       R23 R22 K17 ["Size"]
      148 LOADN                            R23 1
      149 SETTABLEKS                       R23 R22 K13 ["BackgroundTransparency"]
      151 GETUPVAL                         R24 2
      152 JUMPIFNOT                        R24 ; [+3]
      153 GETIMPORT                        R23 K61 [Enum.Font.MontserratBold]
      155 JUMP                             ; [+2]
      156 GETIMPORT                        R23 K63 [Enum.Font.GothamSemibold]
      158 SETTABLEKS                       R23 R22 K53 ["Font"]
      160 MOVE                             R24 R7
      161 LOADK                            R25 K64 ["  >"]
      162 CONCAT                           R23 R24 R25
      163 SETTABLEKS                       R23 R22 K6 ["Text"]
      165 GETIMPORT                        R23 K67 [Color3.fromHex]
      167 LOADK                            R24 K68 ["#FFFFFF"]
      168 CALL                             R23 1 1
      169 SETTABLEKS                       R23 R22 K54 ["TextColor3"]
      171 SETTABLEKS                       R9 R22 K55 ["TextSize"]
      173 LOADB                            R23 1
      174 SETTABLEKS                       R23 R22 K56 ["TextWrapped"]
      176 GETIMPORT                        R23 K70 [Enum.TextXAlignment.Left]
      178 SETTABLEKS                       R23 R22 K57 ["TextXAlignment"]
      180 DUPTABLE                         R23 K71 [{"UIListLayout", "Padding", "Text"}]
      181 GETUPVAL                         R25 0
      182 GETTABLEKS                       R24 R25 K11 ["createElement"]
      184 LOADK                            R25 K32 ["UIListLayout"]
      185 DUPTABLE                         R26 K72 [{"FillDirection", "VerticalAlignment", "SortOrder"}]
      186 GETIMPORT                        R27 K45 [Enum.FillDirection.Horizontal]
      188 SETTABLEKS                       R27 R26 K37 ["FillDirection"]
      190 GETIMPORT                        R27 K48 [Enum.VerticalAlignment.Center]
      192 SETTABLEKS                       R27 R26 K39 ["VerticalAlignment"]
      194 GETIMPORT                        R27 K49 [Enum.SortOrder.LayoutOrder]
      196 SETTABLEKS                       R27 R26 K40 ["SortOrder"]
      198 CALL                             R24 2 1
      199 SETTABLEKS                       R24 R23 K32 ["UIListLayout"]
      201 GETUPVAL                         R25 0
      202 GETTABLEKS                       R24 R25 K11 ["createElement"]
      204 LOADK                            R25 K73 ["UIPadding"]
      205 DUPTABLE                         R26 K75 [{"PaddingLeft"}]
      206 GETIMPORT                        R27 K51 [UDim.new]
      208 LOADN                            R28 0
      209 LOADN                            R29 14
      210 CALL                             R27 2 1
      211 SETTABLEKS                       R27 R26 K74 ["PaddingLeft"]
      213 CALL                             R24 2 1
      214 SETTABLEKS                       R24 R23 K41 ["Padding"]
      216 GETUPVAL                         R25 0
      217 GETTABLEKS                       R24 R25 K11 ["createElement"]
      219 LOADK                            R25 K52 ["TextLabel"]
      220 DUPTABLE                         R26 K58 [{"Size", "BackgroundTransparency", "Font", "Text", "TextColor3", "TextSize", "TextWrapped", "TextXAlignment"}]
      221 GETIMPORT                        R27 K16 [UDim2.new]
      223 LOADN                            R28 1
      224 LOADN                            R29 0
      225 LOADN                            R30 1
      226 LOADN                            R31 0
      227 CALL                             R27 4 1
      228 SETTABLEKS                       R27 R26 K17 ["Size"]
      230 LOADN                            R27 1
      231 SETTABLEKS                       R27 R26 K13 ["BackgroundTransparency"]
      233 GETUPVAL                         R28 2
      234 JUMPIFNOT                        R28 ; [+3]
      235 GETIMPORT                        R27 K61 [Enum.Font.MontserratBold]
      237 JUMP                             ; [+2]
      238 GETIMPORT                        R27 K63 [Enum.Font.GothamSemibold]
      240 SETTABLEKS                       R27 R26 K53 ["Font"]
      242 MOVE                             R28 R7
      243 LOADK                            R29 K64 ["  >"]
      244 CONCAT                           R27 R28 R29
      245 SETTABLEKS                       R27 R26 K6 ["Text"]
      247 GETIMPORT                        R27 K67 [Color3.fromHex]
      249 LOADK                            R28 K68 ["#FFFFFF"]
      250 CALL                             R27 1 1
      251 SETTABLEKS                       R27 R26 K54 ["TextColor3"]
      253 SETTABLEKS                       R9 R26 K55 ["TextSize"]
      255 LOADB                            R27 1
      256 SETTABLEKS                       R27 R26 K56 ["TextWrapped"]
      258 GETIMPORT                        R27 K70 [Enum.TextXAlignment.Left]
      260 SETTABLEKS                       R27 R26 K57 ["TextXAlignment"]
      262 CALL                             R24 2 1
      263 SETTABLEKS                       R24 R23 K6 ["Text"]
      265 CALL                             R20 3 1
      266 SETTABLEKS                       R20 R19 K6 ["Text"]
      268 GETUPVAL                         R21 0
      269 GETTABLEKS                       R20 R21 K11 ["createElement"]
      271 LOADK                            R21 K76 ["ImageLabel"]
      272 DUPTABLE                         R22 K77 [{"LayoutOrder", "Size", "BackgroundTransparency", "Image"}]
      273 LOADN                            R23 2
      274 SETTABLEKS                       R23 R22 K5 ["LayoutOrder"]
      276 GETIMPORT                        R23 K16 [UDim2.new]
      278 LOADN                            R24 0
      279 MOVE                             R25 R10
      280 LOADN                            R26 1
      281 LOADN                            R27 0
      282 CALL                             R23 4 1
      283 SETTABLEKS                       R23 R22 K17 ["Size"]
      285 LOADN                            R23 1
      286 SETTABLEKS                       R23 R22 K13 ["BackgroundTransparency"]
      288 SETTABLEKS                       R3 R22 K2 ["Image"]
      290 CALL                             R20 2 1
      291 SETTABLEKS                       R20 R19 K2 ["Image"]
      293 CALL                             R16 3 -1
      294 SETLIST                          R15 R16 -1 [1]
      296 CALL                             R12 3 -1
      297 RETURN                           R12 -1

PROTO_3:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["createElement"]
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
       19 GETTABLEKS                       R5 R3 K9 ["UI"]
       21 GETTABLEKS                       R4 R5 K10 ["HoverArea"]
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
