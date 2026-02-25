PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["IsHovered"]
        4 GETTABLEKS                       R3 R1 K2 ["Icon"]
        6 GETTABLEKS                       R4 R1 K3 ["Name"]
        8 GETTABLEKS                       R5 R1 K4 ["LayoutOrder"]
       10 GETTABLEKS                       R6 R1 K5 ["OnActivated"]
       12 GETTABLEKS                       R7 R1 K6 ["Size"]
       14 GETTABLEKS                       R8 R1 K7 ["TextPadding"]
       16 GETTABLEKS                       R10 R0 K0 ["props"]
       18 GETTABLEKS                       R9 R10 K8 ["Stylizer"]
       20 GETTABLEKS                       R12 R9 K9 ["assetConfig"]
       22 GETTABLEKS                       R11 R12 K10 ["packagePermissions"]
       24 GETTABLEKS                       R10 R11 K11 ["searchBar"]
       26 JUMPIFNOT                        R2 ; [+2]
       27 LOADN                            R11 100
       28 JUMP                             ; [+1]
       29 LOADN                            R11 50
       30 MINUS                            R12 R11
       31 JUMPIFNOT                        R2 ; [+7]
       32 GETTABLEKS                       R15 R10 K12 ["dropDown"]
       34 GETTABLEKS                       R14 R15 K13 ["hovered"]
       36 GETTABLEKS                       R13 R14 K14 ["backgroundColor"]
       38 JUMPIF                           R13 ; [+4]
       39 GETTABLEKS                       R14 R10 K12 ["dropDown"]
       41 GETTABLEKS                       R13 R14 K14 ["backgroundColor"]
       43 GETUPVAL                         R15 0
       44 GETTABLEKS                       R14 R15 K15 ["createElement"]
       46 GETUPVAL                         R15 1
       47 DUPTABLE                         R16 K17 [{"Size", "LayoutOrder", "OnClick"}]
       48 SETTABLEKS                       R7 R16 K6 ["Size"]
       50 SETTABLEKS                       R5 R16 K4 ["LayoutOrder"]
       52 SETTABLEKS                       R6 R16 K16 ["OnClick"]
       54 DUPTABLE                         R17 K19 [{"Container"}]
       55 GETUPVAL                         R19 0
       56 GETTABLEKS                       R18 R19 K15 ["createElement"]
       58 LOADK                            R19 K20 ["Frame"]
       59 DUPTABLE                         R20 K23 [{"AutomaticSize", "LayoutOrder", "BackgroundTransparency"}]
       60 GETIMPORT                        R21 K26 [Enum.AutomaticSize.X]
       62 SETTABLEKS                       R21 R20 K21 ["AutomaticSize"]
       64 LOADN                            R21 0
       65 SETTABLEKS                       R21 R20 K4 ["LayoutOrder"]
       67 LOADN                            R21 1
       68 SETTABLEKS                       R21 R20 K22 ["BackgroundTransparency"]
       70 DUPTABLE                         R21 K30 [{"UIListLayout", "IconFrame", "TextLabel"}]
       71 GETUPVAL                         R23 0
       72 GETTABLEKS                       R22 R23 K15 ["createElement"]
       74 LOADK                            R23 K27 ["UIListLayout"]
       75 DUPTABLE                         R24 K33 [{"SortOrder", "FillDirection"}]
       76 GETIMPORT                        R25 K34 [Enum.SortOrder.LayoutOrder]
       78 SETTABLEKS                       R25 R24 K31 ["SortOrder"]
       80 GETIMPORT                        R25 K36 [Enum.FillDirection.Horizontal]
       82 SETTABLEKS                       R25 R24 K32 ["FillDirection"]
       84 CALL                             R22 2 1
       85 SETTABLEKS                       R22 R21 K27 ["UIListLayout"]
       87 GETUPVAL                         R23 0
       88 GETTABLEKS                       R22 R23 K15 ["createElement"]
       90 LOADK                            R23 K20 ["Frame"]
       91 DUPTABLE                         R24 K37 [{"BackgroundTransparency", "LayoutOrder", "Size"}]
       92 LOADN                            R25 1
       93 SETTABLEKS                       R25 R24 K22 ["BackgroundTransparency"]
       95 LOADN                            R25 1
       96 SETTABLEKS                       R25 R24 K4 ["LayoutOrder"]
       98 GETIMPORT                        R25 K40 [UDim2.new]
      100 LOADN                            R26 0
      101 LOADN                            R27 50
      102 LOADN                            R28 0
      103 LOADN                            R29 50
      104 CALL                             R25 4 1
      105 SETTABLEKS                       R25 R24 K6 ["Size"]
      107 DUPTABLE                         R25 K42 [{"SmallIcon"}]
      108 GETUPVAL                         R27 0
      109 GETTABLEKS                       R26 R27 K15 ["createElement"]
      111 LOADK                            R27 K20 ["Frame"]
      112 DUPTABLE                         R28 K47 [{"AnchorPoint", "BackgroundColor3", "BorderSizePixel", "Position", "Size"}]
      113 GETIMPORT                        R29 K49 [Vector2.new]
      115 LOADK                            R30 K50 [0.5]
      116 LOADK                            R31 K50 [0.5]
      117 CALL                             R29 2 1
      118 SETTABLEKS                       R29 R28 K43 ["AnchorPoint"]
      120 SETTABLEKS                       R13 R28 K44 ["BackgroundColor3"]
      122 LOADN                            R29 0
      123 SETTABLEKS                       R29 R28 K45 ["BorderSizePixel"]
      125 GETIMPORT                        R29 K40 [UDim2.new]
      127 LOADK                            R30 K50 [0.5]
      128 LOADN                            R31 0
      129 LOADK                            R32 K50 [0.5]
      130 LOADN                            R33 0
      131 CALL                             R29 4 1
      132 SETTABLEKS                       R29 R28 K46 ["Position"]
      134 GETIMPORT                        R29 K40 [UDim2.new]
      136 LOADN                            R30 0
      137 LOADN                            R31 32
      138 LOADN                            R32 0
      139 LOADN                            R33 32
      140 CALL                             R29 4 1
      141 SETTABLEKS                       R29 R28 K6 ["Size"]
      143 DUPTABLE                         R29 K51 [{"Icon"}]
      144 SETTABLEKS                       R3 R29 K2 ["Icon"]
      146 CALL                             R26 3 1
      147 SETTABLEKS                       R26 R25 K41 ["SmallIcon"]
      149 CALL                             R22 3 1
      150 SETTABLEKS                       R22 R21 K28 ["IconFrame"]
      152 GETUPVAL                         R23 0
      153 GETTABLEKS                       R22 R23 K15 ["createElement"]
      155 LOADK                            R23 K29 ["TextLabel"]
      156 DUPTABLE                         R24 K59 [{"BackgroundTransparency", "ClipsDescendants", "Font", "LayoutOrder", "Size", "Text", "TextColor3", "TextSize", "TextWrapped", "TextXAlignment"}]
      157 LOADN                            R25 1
      158 SETTABLEKS                       R25 R24 K22 ["BackgroundTransparency"]
      160 LOADB                            R25 1
      161 SETTABLEKS                       R25 R24 K52 ["ClipsDescendants"]
      163 GETUPVAL                         R26 2
      164 GETTABLEKS                       R25 R26 K60 ["FONT"]
      166 SETTABLEKS                       R25 R24 K53 ["Font"]
      168 LOADN                            R25 2
      169 SETTABLEKS                       R25 R24 K4 ["LayoutOrder"]
      171 GETIMPORT                        R25 K40 [UDim2.new]
      173 LOADN                            R26 1
      174 MOVE                             R27 R12
      175 LOADN                            R28 0
      176 LOADN                            R29 50
      177 CALL                             R25 4 1
      178 SETTABLEKS                       R25 R24 K6 ["Size"]
      180 SETTABLEKS                       R4 R24 K54 ["Text"]
      182 GETTABLEKS                       R26 R9 K9 ["assetConfig"]
      184 GETTABLEKS                       R25 R26 K61 ["textColor"]
      186 SETTABLEKS                       R25 R24 K55 ["TextColor3"]
      188 GETUPVAL                         R26 2
      189 GETTABLEKS                       R25 R26 K62 ["FONT_SIZE_TITLE"]
      191 SETTABLEKS                       R25 R24 K56 ["TextSize"]
      193 LOADB                            R25 1
      194 SETTABLEKS                       R25 R24 K57 ["TextWrapped"]
      196 GETIMPORT                        R25 K64 [Enum.TextXAlignment.Left]
      198 SETTABLEKS                       R25 R24 K58 ["TextXAlignment"]
      200 DUPTABLE                         R25 K66 [{"Padding"}]
      201 GETUPVAL                         R27 0
      202 GETTABLEKS                       R26 R27 K15 ["createElement"]
      204 LOADK                            R27 K67 ["UIPadding"]
      205 DUPTABLE                         R28 K69 [{"PaddingLeft"}]
      206 GETIMPORT                        R29 K71 [UDim.new]
      208 LOADN                            R30 0
      209 MOVE                             R31 R8
      210 CALL                             R29 2 1
      211 SETTABLEKS                       R29 R28 K68 ["PaddingLeft"]
      213 CALL                             R26 2 1
      214 SETTABLEKS                       R26 R25 K65 ["Padding"]
      216 CALL                             R22 3 1
      217 SETTABLEKS                       R22 R21 K29 ["TextLabel"]
      219 CALL                             R18 3 1
      220 SETTABLEKS                       R18 R17 K18 ["Container"]
      222 CALL                             R14 3 -1
      223 RETURN                           R14 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R5 K1 [script]
        3 GETTABLEKS                       R4 R5 K2 ["Parent"]
        5 GETTABLEKS                       R3 R4 K2 ["Parent"]
        7 GETTABLEKS                       R2 R3 K2 ["Parent"]
        9 GETTABLEKS                       R1 R2 K2 ["Parent"]
       11 GETTABLEKS                       R0 R1 K2 ["Parent"]
       13 GETTABLEKS                       R1 R0 K3 ["Packages"]
       15 GETIMPORT                        R2 K5 [require]
       17 GETTABLEKS                       R3 R1 K6 ["Roact"]
       19 CALL                             R2 1 1
       20 GETTABLEKS                       R4 R0 K7 ["Src"]
       22 GETTABLEKS                       R3 R4 K8 ["Util"]
       24 GETIMPORT                        R4 K5 [require]
       26 GETTABLEKS                       R5 R3 K9 ["Constants"]
       28 CALL                             R4 1 1
       29 GETIMPORT                        R5 K5 [require]
       31 GETTABLEKS                       R6 R1 K10 ["Framework"]
       33 CALL                             R5 1 1
       34 GETTABLEKS                       R6 R5 K11 ["ContextServices"]
       36 GETTABLEKS                       R7 R6 K12 ["withContext"]
       38 GETTABLEKS                       R9 R5 K13 ["UI"]
       40 GETTABLEKS                       R8 R9 K14 ["Button"]
       42 GETTABLEKS                       R9 R2 K15 ["PureComponent"]
       44 LOADK                            R11 K16 ["CollaboratorSearchItem"]
       45 NAMECALL                         R9 R9 K17 ["extend"]
       47 CALL                             R9 2 1
       48 DUPCLOSURE                       R10 K18 [PROTO_0]
       49 CAPTURE                          VAL R2
       50 CAPTURE                          VAL R8
       51 CAPTURE                          VAL R4
       52 SETTABLEKS                       R10 R9 K19 ["render"]
       54 MOVE                             R10 R7
       55 DUPTABLE                         R11 K21 [{"Stylizer"}]
       56 GETTABLEKS                       R12 R6 K20 ["Stylizer"]
       58 SETTABLEKS                       R12 R11 K20 ["Stylizer"]
       60 CALL                             R10 1 1
       61 MOVE                             R11 R9
       62 CALL                             R10 1 1
       63 MOVE                             R9 R10
       64 RETURN                           R9 1
