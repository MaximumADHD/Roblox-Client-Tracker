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
        0 DUPTABLE                         R1 K2 [{[1] = False}]
        1 SETTABLEKS                       R1 R0 K3 ["state"]
        3 DUPCLOSURE                       R1 K4 [PROTO_0]
        4 CAPTURE                          UPVAL U0
        5 SETTABLEKS                       R1 R0 K5 ["getTextWidth"]
        7 NEWCLOSURE                       R1 P1
        8 CAPTURE                          VAL R0
        9 SETTABLEKS                       R1 R0 K6 ["focusChanged"]
       11 NEWCLOSURE                       R1 P2
       12 CAPTURE                          VAL R0
       13 SETTABLEKS                       R1 R0 K7 ["onDragMoved"]
       15 NEWCLOSURE                       R1 P3
       16 CAPTURE                          VAL R0
       17 SETTABLEKS                       R1 R0 K8 ["onDragBegan"]
       19 RETURN                           R0 0

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
       44 DUPTABLE                         R19 K25 [{["Style"] = "BorderBox", ["Size"], ["Position"], ["ZIndex"] = 2, ["AnchorPoint"], ["BackgroundColor3"], ["BorderColor3"], ["LayoutOrder"]}]
       45 SETTABLEKS                       R8 R19 K7 ["Size"]
       47 SETTABLEKS                       R9 R19 K8 ["Position"]
       49 SETTABLEKS                       R10 R19 K9 ["AnchorPoint"]
       51 GETTABLEKS                       R20 R3 K26 ["backgroundColor"]
       53 SETTABLEKS                       R20 R19 K23 ["BackgroundColor3"]
       55 SETTABLEKS                       R15 R19 K24 ["BorderColor3"]
       57 SETTABLEKS                       R12 R19 K11 ["LayoutOrder"]
       59 DUPTABLE                         R20 K30 [{"Layout", "LabelFrame", "TextBox"}]
       60 GETUPVAL                         R21 0
       61 GETTABLEKS                       R21 R21 K18 ["createElement"]
       63 LOADK                            R22 K31 ["UIListLayout"]
       64 DUPTABLE                         R23 K34 [{"SortOrder", "FillDirection"}]
       65 GETIMPORT                        R24 K36 [Enum.SortOrder.LayoutOrder]
       67 SETTABLEKS                       R24 R23 K32 ["SortOrder"]
       69 GETIMPORT                        R24 K38 [Enum.FillDirection.Horizontal]
       71 SETTABLEKS                       R24 R23 K33 ["FillDirection"]
       73 CALL                             R21 2 1
       74 SETTABLEKS                       R21 R20 K27 ["Layout"]
       76 GETUPVAL                         R21 0
       77 GETTABLEKS                       R21 R21 K18 ["createElement"]
       79 GETUPVAL                         R22 1
       80 DUPTABLE                         R23 K40 [{["Style"] = "BorderBox", ["Size"], ["BackgroundColor3"], ["BorderColor3"], ["LayoutOrder"] = 1}]
       81 GETIMPORT                        R24 K43 [UDim2.new]
       83 LOADN                            R25 0
       84 MOVE                             R26 R16
       85 LOADN                            R27 1
       86 LOADN                            R28 0
       87 CALL                             R24 4 1
       88 SETTABLEKS                       R24 R23 K7 ["Size"]
       90 GETTABLEKS                       R24 R4 K44 ["shadedBackgroundColor"]
       92 SETTABLEKS                       R24 R23 K23 ["BackgroundColor3"]
       94 SETTABLEKS                       R15 R23 K24 ["BorderColor3"]
       96 DUPTABLE                         R24 K49 [{"NameLabel", "LeftBorderOverlay", "RightBorderOverlay", "DragArea"}]
       97 GETUPVAL                         R25 0
       98 GETTABLEKS                       R25 R25 K18 ["createElement"]
      100 LOADK                            R26 K50 ["TextLabel"]
      101 DUPTABLE                         R27 K57 [{["Size"], ["BackgroundTransparency"] = 1, ["ZIndex"] = 2, ["Text"], ["Font"], ["TextSize"], ["TextColor3"], ["TextXAlignment"]}]
      102 GETIMPORT                        R28 K43 [UDim2.new]
      104 LOADN                            R29 1
      105 LOADN                            R30 0
      106 LOADN                            R31 1
      107 LOADN                            R32 0
      108 CALL                             R28 4 1
      109 SETTABLEKS                       R28 R27 K7 ["Size"]
      111 SETTABLEKS                       R6 R27 K52 ["Text"]
      113 GETTABLEKS                       R28 R2 K58 ["font"]
      115 SETTABLEKS                       R28 R27 K53 ["Font"]
      117 GETTABLEKS                       R28 R4 K59 ["textSize"]
      119 SETTABLEKS                       R28 R27 K54 ["TextSize"]
      121 MOVE                             R28 R7
      122 JUMPIF                           R28 ; [+2]
      123 GETTABLEKS                       R28 R4 K60 ["textColor"]
      125 SETTABLEKS                       R28 R27 K55 ["TextColor3"]
      127 GETIMPORT                        R28 K62 [Enum.TextXAlignment.Center]
      129 SETTABLEKS                       R28 R27 K56 ["TextXAlignment"]
      131 CALL                             R25 2 1
      132 SETTABLEKS                       R25 R24 K45 ["NameLabel"]
      134 GETUPVAL                         R25 0
      135 GETTABLEKS                       R25 R25 K18 ["createElement"]
      137 LOADK                            R26 K63 ["Frame"]
      138 DUPTABLE                         R27 K66 [{["Size"], ["Position"], ["AnchorPoint"], ["BackgroundColor3"], ["BorderSizePixel"] = 0}]
      139 GETIMPORT                        R28 K43 [UDim2.new]
      141 LOADN                            R29 0
      142 LOADN                            R30 5
      143 LOADN                            R31 1
      144 LOADN                            R32 -2
      145 CALL                             R28 4 1
      146 SETTABLEKS                       R28 R27 K7 ["Size"]
      148 GETIMPORT                        R28 K43 [UDim2.new]
      150 LOADN                            R29 1
      151 LOADN                            R30 0
      152 LOADK                            R31 K67 [0.5]
      153 LOADN                            R32 0
      154 CALL                             R28 4 1
      155 SETTABLEKS                       R28 R27 K8 ["Position"]
      157 GETIMPORT                        R28 K69 [Vector2.new]
      159 LOADN                            R29 1
      160 LOADK                            R30 K67 [0.5]
      161 CALL                             R28 2 1
      162 SETTABLEKS                       R28 R27 K9 ["AnchorPoint"]
      164 GETTABLEKS                       R28 R4 K44 ["shadedBackgroundColor"]
      166 SETTABLEKS                       R28 R27 K23 ["BackgroundColor3"]
      168 CALL                             R25 2 1
      169 SETTABLEKS                       R25 R24 K46 ["LeftBorderOverlay"]
      171 GETUPVAL                         R25 0
      172 GETTABLEKS                       R25 R25 K18 ["createElement"]
      174 LOADK                            R26 K63 ["Frame"]
      175 DUPTABLE                         R27 K66 [{["Size"], ["Position"], ["AnchorPoint"], ["BackgroundColor3"], ["BorderSizePixel"] = 0}]
      176 GETIMPORT                        R28 K43 [UDim2.new]
      178 LOADN                            R29 0
      179 LOADN                            R30 5
      180 LOADN                            R31 1
      181 LOADN                            R32 -2
      182 CALL                             R28 4 1
      183 SETTABLEKS                       R28 R27 K7 ["Size"]
      185 GETIMPORT                        R28 K43 [UDim2.new]
      187 LOADN                            R29 1
      188 LOADN                            R30 0
      189 LOADK                            R31 K67 [0.5]
      190 LOADN                            R32 0
      191 CALL                             R28 4 1
      192 SETTABLEKS                       R28 R27 K8 ["Position"]
      194 GETIMPORT                        R28 K69 [Vector2.new]
      196 LOADN                            R29 0
      197 LOADK                            R30 K67 [0.5]
      198 CALL                             R28 2 1
      199 SETTABLEKS                       R28 R27 K9 ["AnchorPoint"]
      201 GETTABLEKS                       R28 R3 K26 ["backgroundColor"]
      203 SETTABLEKS                       R28 R27 K23 ["BackgroundColor3"]
      205 CALL                             R25 2 1
      206 SETTABLEKS                       R25 R24 K47 ["RightBorderOverlay"]
      208 JUMPIF                           R13 ; [+24]
      209 GETUPVAL                         R25 0
      210 GETTABLEKS                       R25 R25 K18 ["createElement"]
      212 GETUPVAL                         R26 2
      213 DUPTABLE                         R27 K74 [{["Size"], ["Cursor"] = "SizeEW", ["OnDragMoved"], ["OnDragBegan"]}]
      214 GETIMPORT                        R28 K43 [UDim2.new]
      216 LOADN                            R29 1
      217 LOADN                            R30 0
      218 LOADN                            R31 1
      219 LOADN                            R32 0
      220 CALL                             R28 4 1
      221 SETTABLEKS                       R28 R27 K7 ["Size"]
      223 GETTABLEKS                       R28 R0 K75 ["onDragMoved"]
      225 SETTABLEKS                       R28 R27 K72 ["OnDragMoved"]
      227 GETTABLEKS                       R28 R0 K76 ["onDragBegan"]
      229 SETTABLEKS                       R28 R27 K73 ["OnDragBegan"]
      231 CALL                             R25 2 1
      232 JUMPIF                           R25 ; [+1]
      233 LOADNIL                          R25
      234 SETTABLEKS                       R25 R24 K48 ["DragArea"]
      236 CALL                             R21 3 1
      237 SETTABLEKS                       R21 R20 K28 ["LabelFrame"]
      239 GETUPVAL                         R21 0
      240 GETTABLEKS                       R21 R21 K18 ["createElement"]
      242 GETUPVAL                         R22 3
      243 DUPTABLE                         R23 K80 [{["Size"], ["Text"], ["TextXAlignment"], ["ReadOnly"], ["LayoutOrder"] = 2, ["ClearTextOnFocus"] = False, ["FocusChanged"]}]
      244 GETIMPORT                        R24 K43 [UDim2.new]
      246 LOADN                            R25 1
      247 MINUS                            R26 R16
      248 LOADN                            R27 1
      249 LOADN                            R28 0
      250 CALL                             R24 4 1
      251 SETTABLEKS                       R24 R23 K7 ["Size"]
      253 MOVE                             R26 R11
      254 NAMECALL                         R24 R0 K81 ["formatNumber"]
      256 CALL                             R24 2 1
      257 SETTABLEKS                       R24 R23 K52 ["Text"]
      259 GETIMPORT                        R24 K83 [Enum.TextXAlignment.Left]
      261 SETTABLEKS                       R24 R23 K56 ["TextXAlignment"]
      263 SETTABLEKS                       R13 R23 K12 ["ReadOnly"]
      265 GETTABLEKS                       R24 R0 K84 ["focusChanged"]
      267 SETTABLEKS                       R24 R23 K79 ["FocusChanged"]
      269 CALL                             R21 2 1
      270 SETTABLEKS                       R21 R20 K29 ["TextBox"]
      272 CALL                             R17 3 -1
      273 RETURN                           R17 -1

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
