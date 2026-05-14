PROTO_0:
        0 GETTABLEKS                       R2 R1 K0 ["font"]
        2 GETTABLEKS                       R3 R1 K1 ["trackTheme"]
        4 GETTABLEKS                       R3 R3 K2 ["textSize"]
        6 GETUPVAL                         R4 0
        7 GETTABLEKS                       R4 R4 K3 ["getTextWidth"]
        9 MOVE                             R5 R0
       10 MOVE                             R6 R3
       11 MOVE                             R7 R2
       12 CALL                             R4 3 -1
       13 RETURN                           R4 -1

PROTO_1:
        0 GETUPVAL                         R3 0
        1 DUPTABLE                         R5 K1 [{"focused"}]
        2 SETTABLEKS                       R1 R5 K0 ["focused"]
        4 NAMECALL                         R3 R3 K2 ["setState"]
        6 CALL                             R3 2 0
        7 JUMPIF                           R1 ; [+46]
        8 JUMPIFNOT                        R2 ; [+38]
        9 GETTABLEKS                       R3 R0 K3 ["Text"]
       11 FASTCALL1                        TONUMBER R3 ; [+3]
       12 MOVE                             R5 R3
       13 GETIMPORT                        R4 K5 [tonumber]
       15 CALL                             R4 1 1
       16 JUMPIFNOT                        R4 ; [+22]
       17 GETUPVAL                         R5 0
       18 GETTABLEKS                       R5 R5 K6 ["props"]
       20 GETTABLEKS                       R5 R5 K7 ["SetNumber"]
       22 JUMPIFNOT                        R5 ; [+16]
       23 GETUPVAL                         R5 0
       24 GETTABLEKS                       R5 R5 K6 ["props"]
       26 GETTABLEKS                       R5 R5 K7 ["SetNumber"]
       28 MOVE                             R6 R4
       29 CALL                             R5 1 1
       30 JUMPIFNOT                        R5 ; [+23]
       31 GETUPVAL                         R6 0
       32 MOVE                             R8 R5
       33 NAMECALL                         R6 R6 K8 ["formatNumber"]
       35 CALL                             R6 2 1
       36 SETTABLEKS                       R6 R0 K3 ["Text"]
       38 RETURN                           R0 0
       39 GETUPVAL                         R5 0
       40 GETTABLEKS                       R5 R5 K6 ["props"]
       42 GETTABLEKS                       R5 R5 K9 ["Number"]
       44 SETTABLEKS                       R5 R0 K3 ["Text"]
       46 RETURN                           R0 0
       47 GETUPVAL                         R3 0
       48 GETTABLEKS                       R3 R3 K6 ["props"]
       50 GETTABLEKS                       R3 R3 K9 ["Number"]
       52 SETTABLEKS                       R3 R0 K3 ["Text"]
       54 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["props"]
        3 GETTABLEKS                       R1 R1 K1 ["OnDragMoved"]
        5 JUMPIFNOT                        R1 ; [+7]
        6 GETUPVAL                         R1 0
        7 GETTABLEKS                       R1 R1 K0 ["props"]
        9 GETTABLEKS                       R1 R1 K1 ["OnDragMoved"]
       11 MOVE                             R2 R0
       12 CALL                             R1 1 0
       13 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["props"]
        3 GETTABLEKS                       R1 R1 K1 ["OnDragBegan"]
        5 JUMPIFNOT                        R1 ; [+7]
        6 GETUPVAL                         R1 0
        7 GETTABLEKS                       R1 R1 K0 ["props"]
        9 GETTABLEKS                       R1 R1 K1 ["OnDragBegan"]
       11 MOVE                             R2 R0
       12 CALL                             R1 1 0
       13 RETURN                           R0 0

PROTO_4:
        0 DUPTABLE                         R1 K1 [{"focused"}]
        1 LOADB                            R2 0
        2 SETTABLEKS                       R2 R1 K0 ["focused"]
        4 SETTABLEKS                       R1 R0 K2 ["state"]
        6 DUPCLOSURE                       R1 K3 [PROTO_0]
        7 CAPTURE                          UPVAL U0
        8 SETTABLEKS                       R1 R0 K4 ["getTextWidth"]
       10 NEWCLOSURE                       R1 P1
       11 CAPTURE                          VAL R0
       12 SETTABLEKS                       R1 R0 K5 ["focusChanged"]
       14 NEWCLOSURE                       R1 P2
       15 CAPTURE                          VAL R0
       16 SETTABLEKS                       R1 R0 K6 ["onDragMoved"]
       18 NEWCLOSURE                       R1 P3
       19 CAPTURE                          VAL R0
       20 SETTABLEKS                       R1 R0 K7 ["onDragBegan"]
       22 RETURN                           R0 0

PROTO_5:
        0 GETTABLEKS                       R2 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R2 K1 ["Precision"]
        4 JUMPIF                           R2 ; [+3]
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R2 R2 K2 ["NUMBER_PRECISION"]
        8 LOADK                            R7 K3 [0.5]
        9 MUL                              R8 R1 R2
       10 ADD                              R6 R7 R8
       11 FASTCALL1                        MATH_FLOOR R6 ; [+2]
       12 GETIMPORT                        R5 K6 [math.floor]
       14 CALL                             R5 1 1
       15 DIV                              R4 R5 R2
       16 FASTCALL1                        TOSTRING R4 ; [+2]
       17 GETIMPORT                        R3 K8 [tostring]
       19 CALL                             R3 1 1
       20 RETURN                           R3 1

PROTO_6:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Stylizer"]
        4 GETTABLEKS                       R3 R2 K2 ["textBox"]
        6 GETTABLEKS                       R4 R2 K3 ["trackTheme"]
        8 GETTABLEKS                       R5 R0 K4 ["state"]
       10 GETTABLEKS                       R6 R1 K5 ["Name"]
       12 GETTABLEKS                       R7 R1 K6 ["Color"]
       14 GETTABLEKS                       R8 R1 K7 ["Size"]
       16 GETTABLEKS                       R9 R1 K8 ["Position"]
       18 GETTABLEKS                       R10 R1 K9 ["AnchorPoint"]
       20 GETTABLEKS                       R11 R1 K10 ["Number"]
       22 GETTABLEKS                       R12 R1 K11 ["LayoutOrder"]
       24 GETTABLEKS                       R13 R1 K12 ["ReadOnly"]
       26 GETTABLEKS                       R14 R5 K13 ["focused"]
       28 JUMPIFNOT                        R14 ; [+3]
       29 GETTABLEKS                       R15 R3 K14 ["focusedBorder"]
       31 JUMPIF                           R15 ; [+2]
       32 GETTABLEKS                       R15 R3 K15 ["defaultBorder"]
       34 GETTABLEKS                       R17 R0 K17 ["getTextWidth"]
       36 MOVE                             R18 R6
       37 MOVE                             R19 R2
       38 CALL                             R17 2 1
       39 ADDK                             R16 R17 K16 [12]
       40 GETUPVAL                         R17 0
       41 GETTABLEKS                       R17 R17 K18 ["createElement"]
       43 GETUPVAL                         R18 1
       44 DUPTABLE                         R19 K23 [{"Style", "Size", "Position", "ZIndex", "AnchorPoint", "BackgroundColor3", "BorderColor3", "LayoutOrder"}]
       45 LOADK                            R20 K24 ["BorderBox"]
       46 SETTABLEKS                       R20 R19 K19 ["Style"]
       48 SETTABLEKS                       R8 R19 K7 ["Size"]
       50 SETTABLEKS                       R9 R19 K8 ["Position"]
       52 LOADN                            R20 2
       53 SETTABLEKS                       R20 R19 K20 ["ZIndex"]
       55 SETTABLEKS                       R10 R19 K9 ["AnchorPoint"]
       57 GETTABLEKS                       R20 R3 K25 ["backgroundColor"]
       59 SETTABLEKS                       R20 R19 K21 ["BackgroundColor3"]
       61 SETTABLEKS                       R15 R19 K22 ["BorderColor3"]
       63 SETTABLEKS                       R12 R19 K11 ["LayoutOrder"]
       65 DUPTABLE                         R20 K29 [{"Layout", "LabelFrame", "TextBox"}]
       66 GETUPVAL                         R21 0
       67 GETTABLEKS                       R21 R21 K18 ["createElement"]
       69 LOADK                            R22 K30 ["UIListLayout"]
       70 DUPTABLE                         R23 K33 [{"SortOrder", "FillDirection"}]
       71 GETIMPORT                        R24 K35 [Enum.SortOrder.LayoutOrder]
       73 SETTABLEKS                       R24 R23 K31 ["SortOrder"]
       75 GETIMPORT                        R24 K37 [Enum.FillDirection.Horizontal]
       77 SETTABLEKS                       R24 R23 K32 ["FillDirection"]
       79 CALL                             R21 2 1
       80 SETTABLEKS                       R21 R20 K26 ["Layout"]
       82 GETUPVAL                         R21 0
       83 GETTABLEKS                       R21 R21 K18 ["createElement"]
       85 GETUPVAL                         R22 1
       86 DUPTABLE                         R23 K38 [{"Style", "Size", "BackgroundColor3", "BorderColor3", "LayoutOrder"}]
       87 LOADK                            R24 K24 ["BorderBox"]
       88 SETTABLEKS                       R24 R23 K19 ["Style"]
       90 GETIMPORT                        R24 K41 [UDim2.new]
       92 LOADN                            R25 0
       93 MOVE                             R26 R16
       94 LOADN                            R27 1
       95 LOADN                            R28 0
       96 CALL                             R24 4 1
       97 SETTABLEKS                       R24 R23 K7 ["Size"]
       99 GETTABLEKS                       R24 R4 K42 ["shadedBackgroundColor"]
      101 SETTABLEKS                       R24 R23 K21 ["BackgroundColor3"]
      103 SETTABLEKS                       R15 R23 K22 ["BorderColor3"]
      105 LOADN                            R24 1
      106 SETTABLEKS                       R24 R23 K11 ["LayoutOrder"]
      108 DUPTABLE                         R24 K47 [{"NameLabel", "LeftBorderOverlay", "RightBorderOverlay", "DragArea"}]
      109 GETUPVAL                         R25 0
      110 GETTABLEKS                       R25 R25 K18 ["createElement"]
      112 LOADK                            R26 K48 ["TextLabel"]
      113 DUPTABLE                         R27 K55 [{"Size", "BackgroundTransparency", "ZIndex", "Text", "Font", "TextSize", "TextColor3", "TextXAlignment"}]
      114 GETIMPORT                        R28 K41 [UDim2.new]
      116 LOADN                            R29 1
      117 LOADN                            R30 0
      118 LOADN                            R31 1
      119 LOADN                            R32 0
      120 CALL                             R28 4 1
      121 SETTABLEKS                       R28 R27 K7 ["Size"]
      123 LOADN                            R28 1
      124 SETTABLEKS                       R28 R27 K49 ["BackgroundTransparency"]
      126 LOADN                            R28 2
      127 SETTABLEKS                       R28 R27 K20 ["ZIndex"]
      129 SETTABLEKS                       R6 R27 K50 ["Text"]
      131 GETTABLEKS                       R28 R2 K56 ["font"]
      133 SETTABLEKS                       R28 R27 K51 ["Font"]
      135 GETTABLEKS                       R28 R4 K57 ["textSize"]
      137 SETTABLEKS                       R28 R27 K52 ["TextSize"]
      139 MOVE                             R28 R7
      140 JUMPIF                           R28 ; [+2]
      141 GETTABLEKS                       R28 R4 K58 ["textColor"]
      143 SETTABLEKS                       R28 R27 K53 ["TextColor3"]
      145 GETIMPORT                        R28 K60 [Enum.TextXAlignment.Center]
      147 SETTABLEKS                       R28 R27 K54 ["TextXAlignment"]
      149 CALL                             R25 2 1
      150 SETTABLEKS                       R25 R24 K43 ["NameLabel"]
      152 GETUPVAL                         R25 0
      153 GETTABLEKS                       R25 R25 K18 ["createElement"]
      155 LOADK                            R26 K61 ["Frame"]
      156 DUPTABLE                         R27 K63 [{"Size", "Position", "AnchorPoint", "BackgroundColor3", "BorderSizePixel"}]
      157 GETIMPORT                        R28 K41 [UDim2.new]
      159 LOADN                            R29 0
      160 LOADN                            R30 5
      161 LOADN                            R31 1
      162 LOADN                            R32 254
      163 CALL                             R28 4 1
      164 SETTABLEKS                       R28 R27 K7 ["Size"]
      166 GETIMPORT                        R28 K41 [UDim2.new]
      168 LOADN                            R29 1
      169 LOADN                            R30 0
      170 LOADK                            R31 K64 [0.5]
      171 LOADN                            R32 0
      172 CALL                             R28 4 1
      173 SETTABLEKS                       R28 R27 K8 ["Position"]
      175 GETIMPORT                        R28 K66 [Vector2.new]
      177 LOADN                            R29 1
      178 LOADK                            R30 K64 [0.5]
      179 CALL                             R28 2 1
      180 SETTABLEKS                       R28 R27 K9 ["AnchorPoint"]
      182 GETTABLEKS                       R28 R4 K42 ["shadedBackgroundColor"]
      184 SETTABLEKS                       R28 R27 K21 ["BackgroundColor3"]
      186 LOADN                            R28 0
      187 SETTABLEKS                       R28 R27 K62 ["BorderSizePixel"]
      189 CALL                             R25 2 1
      190 SETTABLEKS                       R25 R24 K44 ["LeftBorderOverlay"]
      192 GETUPVAL                         R25 0
      193 GETTABLEKS                       R25 R25 K18 ["createElement"]
      195 LOADK                            R26 K61 ["Frame"]
      196 DUPTABLE                         R27 K63 [{"Size", "Position", "AnchorPoint", "BackgroundColor3", "BorderSizePixel"}]
      197 GETIMPORT                        R28 K41 [UDim2.new]
      199 LOADN                            R29 0
      200 LOADN                            R30 5
      201 LOADN                            R31 1
      202 LOADN                            R32 254
      203 CALL                             R28 4 1
      204 SETTABLEKS                       R28 R27 K7 ["Size"]
      206 GETIMPORT                        R28 K41 [UDim2.new]
      208 LOADN                            R29 1
      209 LOADN                            R30 0
      210 LOADK                            R31 K64 [0.5]
      211 LOADN                            R32 0
      212 CALL                             R28 4 1
      213 SETTABLEKS                       R28 R27 K8 ["Position"]
      215 GETIMPORT                        R28 K66 [Vector2.new]
      217 LOADN                            R29 0
      218 LOADK                            R30 K64 [0.5]
      219 CALL                             R28 2 1
      220 SETTABLEKS                       R28 R27 K9 ["AnchorPoint"]
      222 GETTABLEKS                       R28 R3 K25 ["backgroundColor"]
      224 SETTABLEKS                       R28 R27 K21 ["BackgroundColor3"]
      226 LOADN                            R28 0
      227 SETTABLEKS                       R28 R27 K62 ["BorderSizePixel"]
      229 CALL                             R25 2 1
      230 SETTABLEKS                       R25 R24 K45 ["RightBorderOverlay"]
      232 JUMPIF                           R13 ; [+27]
      233 GETUPVAL                         R25 0
      234 GETTABLEKS                       R25 R25 K18 ["createElement"]
      236 GETUPVAL                         R26 2
      237 DUPTABLE                         R27 K70 [{"Size", "Cursor", "OnDragMoved", "OnDragBegan"}]
      238 GETIMPORT                        R28 K41 [UDim2.new]
      240 LOADN                            R29 1
      241 LOADN                            R30 0
      242 LOADN                            R31 1
      243 LOADN                            R32 0
      244 CALL                             R28 4 1
      245 SETTABLEKS                       R28 R27 K7 ["Size"]
      247 LOADK                            R28 K71 ["SizeEW"]
      248 SETTABLEKS                       R28 R27 K67 ["Cursor"]
      250 GETTABLEKS                       R28 R0 K72 ["onDragMoved"]
      252 SETTABLEKS                       R28 R27 K68 ["OnDragMoved"]
      254 GETTABLEKS                       R28 R0 K73 ["onDragBegan"]
      256 SETTABLEKS                       R28 R27 K69 ["OnDragBegan"]
      258 CALL                             R25 2 1
      259 JUMPIF                           R25 ; [+1]
      260 LOADNIL                          R25
      261 SETTABLEKS                       R25 R24 K46 ["DragArea"]
      263 CALL                             R21 3 1
      264 SETTABLEKS                       R21 R20 K27 ["LabelFrame"]
      266 GETUPVAL                         R21 0
      267 GETTABLEKS                       R21 R21 K18 ["createElement"]
      269 GETUPVAL                         R22 3
      270 DUPTABLE                         R23 K76 [{"Size", "Text", "TextXAlignment", "ReadOnly", "LayoutOrder", "ClearTextOnFocus", "FocusChanged"}]
      271 GETIMPORT                        R24 K41 [UDim2.new]
      273 LOADN                            R25 1
      274 MINUS                            R26 R16
      275 LOADN                            R27 1
      276 LOADN                            R28 0
      277 CALL                             R24 4 1
      278 SETTABLEKS                       R24 R23 K7 ["Size"]
      280 MOVE                             R26 R11
      281 NAMECALL                         R24 R0 K77 ["formatNumber"]
      283 CALL                             R24 2 1
      284 SETTABLEKS                       R24 R23 K50 ["Text"]
      286 GETIMPORT                        R24 K79 [Enum.TextXAlignment.Left]
      288 SETTABLEKS                       R24 R23 K54 ["TextXAlignment"]
      290 SETTABLEKS                       R13 R23 K12 ["ReadOnly"]
      292 LOADN                            R24 2
      293 SETTABLEKS                       R24 R23 K11 ["LayoutOrder"]
      295 LOADB                            R24 0
      296 SETTABLEKS                       R24 R23 K74 ["ClearTextOnFocus"]
      298 GETTABLEKS                       R24 R0 K80 ["focusChanged"]
      300 SETTABLEKS                       R24 R23 K75 ["FocusChanged"]
      302 CALL                             R21 2 1
      303 SETTABLEKS                       R21 R20 K28 ["TextBox"]
      305 CALL                             R17 3 -1
      306 RETURN                           R17 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationClipEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Roact"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Src"]
       18 GETTABLEKS                       R3 R3 K9 ["Util"]
       20 GETTABLEKS                       R3 R3 K10 ["StringUtils"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K8 ["Src"]
       27 GETTABLEKS                       R4 R4 K9 ["Util"]
       29 GETTABLEKS                       R4 R4 K11 ["Constants"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K5 [require]
       34 GETTABLEKS                       R5 R0 K8 ["Src"]
       36 GETTABLEKS                       R5 R5 K12 ["Components"]
       38 GETTABLEKS                       R5 R5 K13 ["DragListenerArea"]
       40 CALL                             R4 1 1
       41 GETIMPORT                        R5 K5 [require]
       43 GETTABLEKS                       R6 R0 K6 ["Packages"]
       45 GETTABLEKS                       R6 R6 K14 ["Framework"]
       47 CALL                             R5 1 1
       48 GETTABLEKS                       R6 R5 K15 ["UI"]
       50 GETTABLEKS                       R6 R6 K16 ["Pane"]
       52 GETTABLEKS                       R7 R5 K17 ["ContextServices"]
       54 GETTABLEKS                       R8 R7 K18 ["withContext"]
       56 GETIMPORT                        R9 K5 [require]
       58 GETTABLEKS                       R10 R0 K8 ["Src"]
       60 GETTABLEKS                       R10 R10 K12 ["Components"]
       62 GETTABLEKS                       R10 R10 K19 ["TextBox"]
       64 CALL                             R9 1 1
       65 GETTABLEKS                       R10 R1 K20 ["PureComponent"]
       67 LOADK                            R12 K21 ["NumberBox"]
       68 NAMECALL                         R10 R10 K22 ["extend"]
       70 CALL                             R10 2 1
       71 DUPCLOSURE                       R11 K23 [PROTO_4]
       72 CAPTURE                          VAL R2
       73 SETTABLEKS                       R11 R10 K24 ["init"]
       75 DUPCLOSURE                       R11 K25 [PROTO_5]
       76 CAPTURE                          VAL R3
       77 SETTABLEKS                       R11 R10 K26 ["formatNumber"]
       79 DUPCLOSURE                       R11 K27 [PROTO_6]
       80 CAPTURE                          VAL R1
       81 CAPTURE                          VAL R6
       82 CAPTURE                          VAL R4
       83 CAPTURE                          VAL R9
       84 SETTABLEKS                       R11 R10 K28 ["render"]
       86 MOVE                             R11 R8
       87 DUPTABLE                         R12 K30 [{"Stylizer"}]
       88 GETTABLEKS                       R13 R7 K29 ["Stylizer"]
       90 SETTABLEKS                       R13 R12 K29 ["Stylizer"]
       92 CALL                             R11 1 1
       93 MOVE                             R12 R10
       94 CALL                             R11 1 1
       95 MOVE                             R10 R11
       96 RETURN                           R10 1
