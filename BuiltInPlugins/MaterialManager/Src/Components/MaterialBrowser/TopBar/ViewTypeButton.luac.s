PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["props"]
        3 GETTABLEKS                       R2 R1 K1 ["dispatchSetMaterialTileSize"]
        5 MOVE                             R3 R0
        6 CALL                             R2 1 0
        7 GETTABLEKS                       R2 R1 K2 ["PluginController"]
        9 MOVE                             R4 R0
       10 NAMECALL                         R2 R2 K3 ["setMaterialTileSize"]
       12 CALL                             R2 2 0
       13 RETURN                           R0 0

PROTO_1:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          VAL R0
        2 SETTABLEKS                       R1 R0 K0 ["selectMaterialTileSize"]
        4 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R3 R1 K1 ["Stylizer"]
        4 GETTABLEKS                       R2 R3 K2 ["ViewTypeButton"]
        6 GETUPVAL                         R4 0
        7 GETTABLEKS                       R3 R4 K3 ["createElement"]
        9 GETUPVAL                         R4 1
       10 DUPTABLE                         R5 K8 [{"BackgroundColor", "Layout", "LayoutOrder", "Size"}]
       11 GETTABLEKS                       R6 R2 K9 ["ViewTypeBackground"]
       13 SETTABLEKS                       R6 R5 K4 ["BackgroundColor"]
       15 GETIMPORT                        R6 K13 [Enum.FillDirection.Vertical]
       17 SETTABLEKS                       R6 R5 K5 ["Layout"]
       19 GETTABLEKS                       R6 R1 K6 ["LayoutOrder"]
       21 SETTABLEKS                       R6 R5 K6 ["LayoutOrder"]
       23 GETTABLEKS                       R7 R1 K14 ["ViewType"]
       25 GETUPVAL                         R9 2
       26 GETTABLEKS                       R8 R9 K15 ["Grid"]
       28 JUMPIFNOTEQ                      R7 R8 ; [+9]
       30 GETIMPORT                        R6 K18 [UDim2.new]
       32 LOADN                            R7 1
       33 LOADN                            R8 0
       34 LOADN                            R9 0
       35 LOADN                            R10 60
       36 CALL                             R6 4 1
       37 JUMP                             ; [+7]
       38 GETIMPORT                        R6 K18 [UDim2.new]
       40 LOADN                            R7 1
       41 LOADN                            R8 0
       42 LOADN                            R9 0
       43 LOADN                            R10 40
       44 CALL                             R6 4 1
       45 SETTABLEKS                       R6 R5 K7 ["Size"]
       47 DUPTABLE                         R6 K21 [{"Button", "Slider"}]
       48 GETUPVAL                         R8 0
       49 GETTABLEKS                       R7 R8 K3 ["createElement"]
       51 GETUPVAL                         R8 3
       52 DUPTABLE                         R9 K23 [{"Size", "LayoutOrder", "OnClick"}]
       53 GETIMPORT                        R10 K18 [UDim2.new]
       55 LOADN                            R11 1
       56 LOADN                            R12 0
       57 LOADN                            R13 0
       58 LOADN                            R14 40
       59 CALL                             R10 4 1
       60 SETTABLEKS                       R10 R9 K7 ["Size"]
       62 GETTABLEKS                       R10 R1 K6 ["LayoutOrder"]
       64 SETTABLEKS                       R10 R9 K6 ["LayoutOrder"]
       66 GETTABLEKS                       R10 R1 K22 ["OnClick"]
       68 SETTABLEKS                       R10 R9 K22 ["OnClick"]
       70 DUPTABLE                         R10 K26 [{"ImageContainer", "Label"}]
       71 GETUPVAL                         R12 0
       72 GETTABLEKS                       R11 R12 K3 ["createElement"]
       74 GETUPVAL                         R12 1
       75 DUPTABLE                         R13 K27 [{"LayoutOrder", "Size"}]
       76 LOADN                            R14 1
       77 SETTABLEKS                       R14 R13 K6 ["LayoutOrder"]
       79 GETIMPORT                        R14 K29 [UDim2.fromOffset]
       81 LOADN                            R15 40
       82 LOADN                            R16 40
       83 CALL                             R14 2 1
       84 SETTABLEKS                       R14 R13 K7 ["Size"]
       86 DUPTABLE                         R14 K31 [{"Image"}]
       87 GETUPVAL                         R16 0
       88 GETTABLEKS                       R15 R16 K3 ["createElement"]
       90 GETUPVAL                         R16 4
       91 DUPTABLE                         R17 K35 [{"AnchorPoint", "Position", "Size", "Style"}]
       92 GETIMPORT                        R18 K37 [Vector2.new]
       94 LOADK                            R19 K38 [0.5]
       95 LOADK                            R20 K38 [0.5]
       96 CALL                             R18 2 1
       97 SETTABLEKS                       R18 R17 K32 ["AnchorPoint"]
       99 GETIMPORT                        R18 K40 [UDim2.fromScale]
      101 LOADK                            R19 K38 [0.5]
      102 LOADK                            R20 K38 [0.5]
      103 CALL                             R18 2 1
      104 SETTABLEKS                       R18 R17 K33 ["Position"]
      106 GETIMPORT                        R18 K29 [UDim2.fromOffset]
      108 LOADN                            R19 16
      109 LOADN                            R20 16
      110 CALL                             R18 2 1
      111 SETTABLEKS                       R18 R17 K7 ["Size"]
      113 DUPTABLE                         R18 K31 [{"Image"}]
      114 GETTABLEKS                       R20 R1 K14 ["ViewType"]
      116 GETUPVAL                         R22 2
      117 GETTABLEKS                       R21 R22 K15 ["Grid"]
      119 JUMPIFNOTEQ                      R20 R21 ; [+4]
      121 GETTABLEKS                       R19 R2 K15 ["Grid"]
      123 JUMP                             ; [+2]
      124 GETTABLEKS                       R19 R2 K41 ["List"]
      126 SETTABLEKS                       R19 R18 K30 ["Image"]
      128 SETTABLEKS                       R18 R17 K34 ["Style"]
      130 CALL                             R15 2 1
      131 SETTABLEKS                       R15 R14 K30 ["Image"]
      133 CALL                             R11 3 1
      134 SETTABLEKS                       R11 R10 K24 ["ImageContainer"]
      136 GETUPVAL                         R12 0
      137 GETTABLEKS                       R11 R12 K3 ["createElement"]
      139 GETUPVAL                         R12 5
      140 DUPTABLE                         R13 K44 [{"LayoutOrder", "Size", "Text", "TextXAlignment"}]
      141 LOADN                            R14 2
      142 SETTABLEKS                       R14 R13 K6 ["LayoutOrder"]
      144 GETIMPORT                        R14 K18 [UDim2.new]
      146 LOADN                            R15 1
      147 LOADN                            R16 216
      148 LOADN                            R17 1
      149 LOADN                            R18 0
      150 CALL                             R14 4 1
      151 SETTABLEKS                       R14 R13 K7 ["Size"]
      153 GETTABLEKS                       R14 R1 K45 ["Localization"]
      155 LOADK                            R16 K14 ["ViewType"]
      156 GETTABLEKS                       R17 R1 K14 ["ViewType"]
      158 NAMECALL                         R14 R14 K46 ["getText"]
      160 CALL                             R14 3 1
      161 SETTABLEKS                       R14 R13 K42 ["Text"]
      163 GETIMPORT                        R14 K48 [Enum.TextXAlignment.Left]
      165 SETTABLEKS                       R14 R13 K43 ["TextXAlignment"]
      167 DUPTABLE                         R14 K50 [{"Padding"}]
      168 GETUPVAL                         R16 0
      169 GETTABLEKS                       R15 R16 K3 ["createElement"]
      171 LOADK                            R16 K51 ["UIPadding"]
      172 DUPTABLE                         R17 K53 [{"PaddingLeft"}]
      173 GETIMPORT                        R18 K55 [UDim.new]
      175 LOADN                            R19 0
      176 LOADN                            R20 40
      177 CALL                             R18 2 1
      178 SETTABLEKS                       R18 R17 K52 ["PaddingLeft"]
      180 CALL                             R15 2 1
      181 SETTABLEKS                       R15 R14 K49 ["Padding"]
      183 CALL                             R11 3 1
      184 SETTABLEKS                       R11 R10 K25 ["Label"]
      186 CALL                             R7 3 1
      187 SETTABLEKS                       R7 R6 K19 ["Button"]
      189 GETTABLEKS                       R8 R1 K14 ["ViewType"]
      191 GETUPVAL                         R10 2
      192 GETTABLEKS                       R9 R10 K15 ["Grid"]
      194 JUMPIFNOTEQ                      R8 R9 ; [+61]
      196 GETUPVAL                         R8 0
      197 GETTABLEKS                       R7 R8 K3 ["createElement"]
      199 GETUPVAL                         R8 6
      200 DUPTABLE                         R9 K63 [{"AnchorPoint", "Disabled", "Value", "Min", "Max", "LayoutOrder", "OnValueChanged", "Position", "Size", "SnapIncrement", "VerticalDragTolerance"}]
      201 GETIMPORT                        R10 K37 [Vector2.new]
      203 LOADK                            R11 K38 [0.5]
      204 LOADK                            R12 K38 [0.5]
      205 CALL                             R10 2 1
      206 SETTABLEKS                       R10 R9 K32 ["AnchorPoint"]
      208 LOADB                            R10 0
      209 SETTABLEKS                       R10 R9 K56 ["Disabled"]
      211 GETTABLEKS                       R11 R0 K0 ["props"]
      213 GETTABLEKS                       R10 R11 K64 ["MaterialTileSize"]
      215 SETTABLEKS                       R10 R9 K57 ["Value"]
      217 LOADN                            R10 60
      218 SETTABLEKS                       R10 R9 K58 ["Min"]
      220 LOADN                            R10 200
      221 SETTABLEKS                       R10 R9 K59 ["Max"]
      223 LOADN                            R10 2
      224 SETTABLEKS                       R10 R9 K6 ["LayoutOrder"]
      226 GETTABLEKS                       R10 R0 K65 ["selectMaterialTileSize"]
      228 SETTABLEKS                       R10 R9 K60 ["OnValueChanged"]
      230 GETIMPORT                        R10 K18 [UDim2.new]
      232 LOADK                            R11 K38 [0.5]
      233 LOADN                            R12 0
      234 LOADK                            R13 K38 [0.5]
      235 LOADN                            R14 0
      236 CALL                             R10 4 1
      237 SETTABLEKS                       R10 R9 K33 ["Position"]
      239 GETIMPORT                        R10 K18 [UDim2.new]
      241 LOADN                            R11 1
      242 LOADN                            R12 0
      243 LOADN                            R13 0
      244 LOADN                            R14 20
      245 CALL                             R10 4 1
      246 SETTABLEKS                       R10 R9 K7 ["Size"]
      248 LOADN                            R10 10
      249 SETTABLEKS                       R10 R9 K61 ["SnapIncrement"]
      251 LOADN                            R10 44
      252 SETTABLEKS                       R10 R9 K62 ["VerticalDragTolerance"]
      254 CALL                             R7 2 1
      255 JUMP                             ; [+1]
      256 LOADNIL                          R7
      257 SETTABLEKS                       R7 R6 K20 ["Slider"]
      259 CALL                             R3 3 -1
      260 RETURN                           R3 -1

PROTO_3:
        0 DUPTABLE                         R1 K1 [{"MaterialTileSize"}]
        1 GETTABLEKS                       R3 R0 K2 ["MaterialBrowserReducer"]
        3 GETTABLEKS                       R2 R3 K0 ["MaterialTileSize"]
        5 SETTABLEKS                       R2 R1 K0 ["MaterialTileSize"]
        7 RETURN                           R1 1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_5:
        0 DUPTABLE                         R1 K1 [{"dispatchSetMaterialTileSize"}]
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U0
        4 SETTABLEKS                       R2 R1 K0 ["dispatchSetMaterialTileSize"]
        6 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R5 K1 [script]
        3 GETTABLEKS                       R4 R5 K2 ["Parent"]
        5 GETTABLEKS                       R3 R4 K2 ["Parent"]
        7 GETTABLEKS                       R2 R3 K2 ["Parent"]
        9 GETTABLEKS                       R1 R2 K2 ["Parent"]
       11 GETTABLEKS                       R0 R1 K2 ["Parent"]
       13 GETIMPORT                        R1 K4 [require]
       15 GETTABLEKS                       R3 R0 K5 ["Src"]
       17 GETTABLEKS                       R2 R3 K6 ["Types"]
       19 CALL                             R1 1 1
       20 GETIMPORT                        R2 K4 [require]
       22 GETTABLEKS                       R4 R0 K7 ["Packages"]
       24 GETTABLEKS                       R3 R4 K8 ["Roact"]
       26 CALL                             R2 1 1
       27 GETIMPORT                        R3 K4 [require]
       29 GETTABLEKS                       R5 R0 K7 ["Packages"]
       31 GETTABLEKS                       R4 R5 K9 ["RoactRodux"]
       33 CALL                             R3 1 1
       34 GETIMPORT                        R4 K4 [require]
       36 GETTABLEKS                       R6 R0 K7 ["Packages"]
       38 GETTABLEKS                       R5 R6 K10 ["Framework"]
       40 CALL                             R4 1 1
       41 GETTABLEKS                       R5 R4 K11 ["ContextServices"]
       43 GETTABLEKS                       R6 R5 K12 ["Localization"]
       45 GETTABLEKS                       R7 R5 K13 ["withContext"]
       47 GETTABLEKS                       R9 R4 K14 ["Style"]
       49 GETTABLEKS                       R8 R9 K15 ["Stylizer"]
       51 GETTABLEKS                       R9 R4 K16 ["UI"]
       53 GETTABLEKS                       R10 R9 K17 ["Button"]
       55 GETTABLEKS                       R11 R9 K18 ["Pane"]
       57 GETTABLEKS                       R12 R9 K19 ["Slider"]
       59 GETTABLEKS                       R13 R9 K20 ["Image"]
       61 GETTABLEKS                       R14 R9 K21 ["TextLabel"]
       63 GETIMPORT                        R15 K4 [require]
       65 GETTABLEKS                       R19 R0 K5 ["Src"]
       67 GETTABLEKS                       R18 R19 K22 ["Resources"]
       69 GETTABLEKS                       R17 R18 K23 ["Constants"]
       71 GETTABLEKS                       R16 R17 K24 ["getViewTypes"]
       73 CALL                             R15 1 1
       74 GETIMPORT                        R16 K4 [require]
       76 GETTABLEKS                       R19 R0 K5 ["Src"]
       78 GETTABLEKS                       R18 R19 K25 ["Reducers"]
       80 GETTABLEKS                       R17 R18 K26 ["MainReducer"]
       82 CALL                             R16 1 1
       83 GETIMPORT                        R17 K4 [require]
       85 GETTABLEKS                       R20 R0 K5 ["Src"]
       87 GETTABLEKS                       R19 R20 K27 ["Controllers"]
       89 GETTABLEKS                       R18 R19 K28 ["PluginController"]
       91 CALL                             R17 1 1
       92 GETIMPORT                        R18 K4 [require]
       94 GETTABLEKS                       R21 R0 K5 ["Src"]
       96 GETTABLEKS                       R20 R21 K29 ["Actions"]
       98 GETTABLEKS                       R19 R20 K30 ["SetMaterialTileSize"]
      100 CALL                             R18 1 1
      101 MOVE                             R19 R15
      102 CALL                             R19 0 1
      103 GETTABLEKS                       R20 R2 K31 ["PureComponent"]
      105 LOADK                            R22 K32 ["ViewTypeButton"]
      106 NAMECALL                         R20 R20 K33 ["extend"]
      108 CALL                             R20 2 1
      109 DUPCLOSURE                       R21 K34 [PROTO_1]
      110 SETTABLEKS                       R21 R20 K35 ["init"]
      112 DUPCLOSURE                       R21 K36 [PROTO_2]
      113 CAPTURE                          VAL R2
      114 CAPTURE                          VAL R11
      115 CAPTURE                          VAL R19
      116 CAPTURE                          VAL R10
      117 CAPTURE                          VAL R13
      118 CAPTURE                          VAL R14
      119 CAPTURE                          VAL R12
      120 SETTABLEKS                       R21 R20 K37 ["render"]
      122 MOVE                             R21 R7
      123 DUPTABLE                         R22 K38 [{"Localization", "PluginController", "Stylizer"}]
      124 SETTABLEKS                       R6 R22 K12 ["Localization"]
      126 SETTABLEKS                       R17 R22 K28 ["PluginController"]
      128 SETTABLEKS                       R8 R22 K15 ["Stylizer"]
      130 CALL                             R21 1 1
      131 MOVE                             R22 R20
      132 CALL                             R21 1 1
      133 MOVE                             R20 R21
      134 GETTABLEKS                       R21 R3 K39 ["connect"]
      136 DUPCLOSURE                       R22 K40 [PROTO_3]
      137 DUPCLOSURE                       R23 K41 [PROTO_5]
      138 CAPTURE                          VAL R18
      139 CALL                             R21 2 1
      140 MOVE                             R22 R20
      141 CALL                             R21 1 -1
      142 RETURN                           R21 -1
