PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["props"]
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
        2 GETTABLEKS                       R2 R1 K1 ["Stylizer"]
        4 GETTABLEKS                       R2 R2 K2 ["ViewTypeButton"]
        6 GETUPVAL                         R3 0
        7 GETTABLEKS                       R3 R3 K3 ["createElement"]
        9 GETUPVAL                         R4 1
       10 DUPTABLE                         R5 K8 [{"BackgroundColor", "Layout", "LayoutOrder", "Size"}]
       11 GETTABLEKS                       R6 R2 K9 ["ViewTypeBackground"]
       13 SETTABLEKS                       R6 R5 K4 ["BackgroundColor"]
       15 GETIMPORT                        R6 K13 [Enum.FillDirection.Vertical]
       17 SETTABLEKS                       R6 R5 K5 ["Layout"]
       19 GETTABLEKS                       R6 R1 K6 ["LayoutOrder"]
       21 SETTABLEKS                       R6 R5 K6 ["LayoutOrder"]
       23 GETTABLEKS                       R7 R1 K14 ["ViewType"]
       25 GETUPVAL                         R8 2
       26 GETTABLEKS                       R8 R8 K15 ["Grid"]
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
       48 GETUPVAL                         R7 0
       49 GETTABLEKS                       R7 R7 K3 ["createElement"]
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
       71 GETUPVAL                         R11 0
       72 GETTABLEKS                       R11 R11 K3 ["createElement"]
       74 GETUPVAL                         R12 1
       75 DUPTABLE                         R13 K28 [{["LayoutOrder"] = 1, ["Size"]}]
       76 GETIMPORT                        R14 K30 [UDim2.fromOffset]
       78 LOADN                            R15 40
       79 LOADN                            R16 40
       80 CALL                             R14 2 1
       81 SETTABLEKS                       R14 R13 K7 ["Size"]
       83 DUPTABLE                         R14 K32 [{"Image"}]
       84 GETUPVAL                         R15 0
       85 GETTABLEKS                       R15 R15 K3 ["createElement"]
       87 GETUPVAL                         R16 4
       88 DUPTABLE                         R17 K36 [{"AnchorPoint", "Position", "Size", "Style"}]
       89 GETIMPORT                        R18 K38 [Vector2.new]
       91 LOADK                            R19 K39 [0.5]
       92 LOADK                            R20 K39 [0.5]
       93 CALL                             R18 2 1
       94 SETTABLEKS                       R18 R17 K33 ["AnchorPoint"]
       96 GETIMPORT                        R18 K41 [UDim2.fromScale]
       98 LOADK                            R19 K39 [0.5]
       99 LOADK                            R20 K39 [0.5]
      100 CALL                             R18 2 1
      101 SETTABLEKS                       R18 R17 K34 ["Position"]
      103 GETIMPORT                        R18 K30 [UDim2.fromOffset]
      105 LOADN                            R19 16
      106 LOADN                            R20 16
      107 CALL                             R18 2 1
      108 SETTABLEKS                       R18 R17 K7 ["Size"]
      110 DUPTABLE                         R18 K32 [{"Image"}]
      111 GETTABLEKS                       R20 R1 K14 ["ViewType"]
      113 GETUPVAL                         R21 2
      114 GETTABLEKS                       R21 R21 K15 ["Grid"]
      116 JUMPIFNOTEQ                      R20 R21 ; [+4]
      118 GETTABLEKS                       R19 R2 K15 ["Grid"]
      120 JUMP                             ; [+2]
      121 GETTABLEKS                       R19 R2 K42 ["List"]
      123 SETTABLEKS                       R19 R18 K31 ["Image"]
      125 SETTABLEKS                       R18 R17 K35 ["Style"]
      127 CALL                             R15 2 1
      128 SETTABLEKS                       R15 R14 K31 ["Image"]
      130 CALL                             R11 3 1
      131 SETTABLEKS                       R11 R10 K24 ["ImageContainer"]
      133 GETUPVAL                         R11 0
      134 GETTABLEKS                       R11 R11 K3 ["createElement"]
      136 GETUPVAL                         R12 5
      137 DUPTABLE                         R13 K46 [{["LayoutOrder"] = 2, ["Size"], ["Text"], ["TextXAlignment"]}]
      138 GETIMPORT                        R14 K18 [UDim2.new]
      140 LOADN                            R15 1
      141 LOADN                            R16 -40
      142 LOADN                            R17 1
      143 LOADN                            R18 0
      144 CALL                             R14 4 1
      145 SETTABLEKS                       R14 R13 K7 ["Size"]
      147 GETTABLEKS                       R14 R1 K47 ["Localization"]
      149 LOADK                            R16 K14 ["ViewType"]
      150 GETTABLEKS                       R17 R1 K14 ["ViewType"]
      152 NAMECALL                         R14 R14 K48 ["getText"]
      154 CALL                             R14 3 1
      155 SETTABLEKS                       R14 R13 K44 ["Text"]
      157 GETIMPORT                        R14 K50 [Enum.TextXAlignment.Left]
      159 SETTABLEKS                       R14 R13 K45 ["TextXAlignment"]
      161 DUPTABLE                         R14 K52 [{"Padding"}]
      162 GETUPVAL                         R15 0
      163 GETTABLEKS                       R15 R15 K3 ["createElement"]
      165 LOADK                            R16 K53 ["UIPadding"]
      166 DUPTABLE                         R17 K55 [{"PaddingLeft"}]
      167 GETIMPORT                        R18 K57 [UDim.new]
      169 LOADN                            R19 0
      170 LOADN                            R20 40
      171 CALL                             R18 2 1
      172 SETTABLEKS                       R18 R17 K54 ["PaddingLeft"]
      174 CALL                             R15 2 1
      175 SETTABLEKS                       R15 R14 K51 ["Padding"]
      177 CALL                             R11 3 1
      178 SETTABLEKS                       R11 R10 K25 ["Label"]
      180 CALL                             R7 3 1
      181 SETTABLEKS                       R7 R6 K19 ["Button"]
      183 GETTABLEKS                       R8 R1 K14 ["ViewType"]
      185 GETUPVAL                         R9 2
      186 GETTABLEKS                       R9 R9 K15 ["Grid"]
      188 JUMPIFNOTEQ                      R8 R9 ; [+43]
      190 GETUPVAL                         R7 0
      191 GETTABLEKS                       R7 R7 K3 ["createElement"]
      193 GETUPVAL                         R8 6
      194 DUPTABLE                         R9 K70 [{["AnchorPoint"], ["Disabled"] = False, ["Value"], ["Min"] = 60, ["Max"] = 200, ["LayoutOrder"] = 2, ["OnValueChanged"], ["Position"], ["Size"], ["SnapIncrement"] = 10, ["VerticalDragTolerance"] = 300}]
      195 GETIMPORT                        R10 K38 [Vector2.new]
      197 LOADK                            R11 K39 [0.5]
      198 LOADK                            R12 K39 [0.5]
      199 CALL                             R10 2 1
      200 SETTABLEKS                       R10 R9 K33 ["AnchorPoint"]
      202 GETTABLEKS                       R10 R0 K0 ["props"]
      204 GETTABLEKS                       R10 R10 K71 ["MaterialTileSize"]
      206 SETTABLEKS                       R10 R9 K60 ["Value"]
      208 GETTABLEKS                       R10 R0 K72 ["selectMaterialTileSize"]
      210 SETTABLEKS                       R10 R9 K65 ["OnValueChanged"]
      212 GETIMPORT                        R10 K18 [UDim2.new]
      214 LOADK                            R11 K39 [0.5]
      215 LOADN                            R12 0
      216 LOADK                            R13 K39 [0.5]
      217 LOADN                            R14 0
      218 CALL                             R10 4 1
      219 SETTABLEKS                       R10 R9 K34 ["Position"]
      221 GETIMPORT                        R10 K18 [UDim2.new]
      223 LOADN                            R11 1
      224 LOADN                            R12 0
      225 LOADN                            R13 0
      226 LOADN                            R14 20
      227 CALL                             R10 4 1
      228 SETTABLEKS                       R10 R9 K7 ["Size"]
      230 CALL                             R7 2 1
      231 JUMP                             ; [+1]
      232 LOADNIL                          R7
      233 SETTABLEKS                       R7 R6 K20 ["Slider"]
      235 CALL                             R3 3 -1
      236 RETURN                           R3 -1

PROTO_3:
        0 DUPTABLE                         R1 K1 [{"MaterialTileSize"}]
        1 GETTABLEKS                       R2 R0 K2 ["MaterialBrowserReducer"]
        3 GETTABLEKS                       R2 R2 K0 ["MaterialTileSize"]
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
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETTABLEKS                       R0 R0 K2 ["Parent"]
       11 GETTABLEKS                       R0 R0 K2 ["Parent"]
       13 GETIMPORT                        R1 K4 [require]
       15 GETTABLEKS                       R2 R0 K5 ["Src"]
       17 GETTABLEKS                       R2 R2 K6 ["Types"]
       19 CALL                             R1 1 1
       20 GETIMPORT                        R2 K4 [require]
       22 GETTABLEKS                       R3 R0 K7 ["Packages"]
       24 GETTABLEKS                       R3 R3 K8 ["Roact"]
       26 CALL                             R2 1 1
       27 GETIMPORT                        R3 K4 [require]
       29 GETTABLEKS                       R4 R0 K7 ["Packages"]
       31 GETTABLEKS                       R4 R4 K9 ["RoactRodux"]
       33 CALL                             R3 1 1
       34 GETIMPORT                        R4 K4 [require]
       36 GETTABLEKS                       R5 R0 K7 ["Packages"]
       38 GETTABLEKS                       R5 R5 K10 ["Framework"]
       40 CALL                             R4 1 1
       41 GETTABLEKS                       R5 R4 K11 ["ContextServices"]
       43 GETTABLEKS                       R6 R5 K12 ["Localization"]
       45 GETTABLEKS                       R7 R5 K13 ["withContext"]
       47 GETTABLEKS                       R8 R4 K14 ["Style"]
       49 GETTABLEKS                       R8 R8 K15 ["Stylizer"]
       51 GETTABLEKS                       R9 R4 K16 ["UI"]
       53 GETTABLEKS                       R10 R9 K17 ["Button"]
       55 GETTABLEKS                       R11 R9 K18 ["Pane"]
       57 GETTABLEKS                       R12 R9 K19 ["Slider"]
       59 GETTABLEKS                       R13 R9 K20 ["Image"]
       61 GETTABLEKS                       R14 R9 K21 ["TextLabel"]
       63 GETIMPORT                        R15 K4 [require]
       65 GETTABLEKS                       R16 R0 K5 ["Src"]
       67 GETTABLEKS                       R16 R16 K22 ["Resources"]
       69 GETTABLEKS                       R16 R16 K23 ["Constants"]
       71 GETTABLEKS                       R16 R16 K24 ["getViewTypes"]
       73 CALL                             R15 1 1
       74 GETIMPORT                        R16 K4 [require]
       76 GETTABLEKS                       R17 R0 K5 ["Src"]
       78 GETTABLEKS                       R17 R17 K25 ["Reducers"]
       80 GETTABLEKS                       R17 R17 K26 ["MainReducer"]
       82 CALL                             R16 1 1
       83 GETIMPORT                        R17 K4 [require]
       85 GETTABLEKS                       R18 R0 K5 ["Src"]
       87 GETTABLEKS                       R18 R18 K27 ["Controllers"]
       89 GETTABLEKS                       R18 R18 K28 ["PluginController"]
       91 CALL                             R17 1 1
       92 GETIMPORT                        R18 K4 [require]
       94 GETTABLEKS                       R19 R0 K5 ["Src"]
       96 GETTABLEKS                       R19 R19 K29 ["Actions"]
       98 GETTABLEKS                       R19 R19 K30 ["SetMaterialTileSize"]
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
