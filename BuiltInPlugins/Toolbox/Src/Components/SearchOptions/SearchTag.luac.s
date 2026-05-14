PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R1 R1 K1 ["Stylizer"]
        4 GETTABLEKS                       R2 R0 K0 ["props"]
        6 GETTABLEKS                       R2 R2 K2 ["prefix"]
        8 GETTABLEKS                       R3 R0 K0 ["props"]
       10 GETTABLEKS                       R3 R3 K3 ["Name"]
       12 GETTABLEKS                       R4 R0 K0 ["props"]
       14 GETTABLEKS                       R4 R4 K4 ["onDelete"]
       16 GETUPVAL                         R5 0
       17 MOVE                             R6 R3
       18 LOADNIL                          R7
       19 LOADNIL                          R8
       20 GETIMPORT                        R9 K7 [Vector2.new]
       22 LOADN                            R10 0
       23 LOADN                            R11 0
       24 CALL                             R9 2 -1
       25 CALL                             R5 -1 1
       26 GETTABLEKS                       R5 R5 K8 ["X"]
       28 GETUPVAL                         R6 0
       29 MOVE                             R7 R2
       30 GETUPVAL                         R8 1
       31 GETTABLEKS                       R8 R8 K9 ["FONT_SIZE_MEDIUM"]
       33 GETUPVAL                         R9 1
       34 GETTABLEKS                       R9 R9 K10 ["FONT_BOLD"]
       36 GETIMPORT                        R10 K7 [Vector2.new]
       38 LOADN                            R11 0
       39 LOADN                            R12 0
       40 CALL                             R10 2 -1
       41 CALL                             R6 -1 1
       42 GETTABLEKS                       R6 R6 K8 ["X"]
       44 ADD                              R9 R6 R5
       45 ADDK                             R8 R9 K12 [10]
       46 ADDK                             R7 R8 K11 [16]
       47 GETUPVAL                         R8 2
       48 GETTABLEKS                       R8 R8 K13 ["createElement"]
       50 GETUPVAL                         R9 3
       51 DUPTABLE                         R10 K20 [{"Size", "BackgroundColor3", "BorderColor3", "AnchorPoint", "Position", "LayoutOrder"}]
       52 GETIMPORT                        R11 K22 [UDim2.new]
       54 LOADN                            R12 0
       55 MOVE                             R13 R7
       56 LOADN                            R14 0
       57 GETUPVAL                         R15 4
       58 CALL                             R11 4 1
       59 SETTABLEKS                       R11 R10 K14 ["Size"]
       61 GETTABLEKS                       R11 R1 K23 ["searchTag"]
       63 GETTABLEKS                       R11 R11 K24 ["backgroundColor"]
       65 SETTABLEKS                       R11 R10 K15 ["BackgroundColor3"]
       67 GETTABLEKS                       R11 R1 K23 ["searchTag"]
       69 GETTABLEKS                       R11 R11 K25 ["borderColor"]
       71 SETTABLEKS                       R11 R10 K16 ["BorderColor3"]
       73 GETIMPORT                        R11 K7 [Vector2.new]
       75 LOADK                            R12 K26 [0.5]
       76 LOADK                            R13 K26 [0.5]
       77 CALL                             R11 2 1
       78 SETTABLEKS                       R11 R10 K17 ["AnchorPoint"]
       80 GETIMPORT                        R11 K22 [UDim2.new]
       82 LOADK                            R12 K26 [0.5]
       83 LOADN                            R13 0
       84 LOADK                            R14 K26 [0.5]
       85 LOADN                            R15 0
       86 CALL                             R11 4 1
       87 SETTABLEKS                       R11 R10 K18 ["Position"]
       89 GETTABLEKS                       R12 R0 K0 ["props"]
       91 GETTABLEKS                       R12 R12 K19 ["LayoutOrder"]
       93 ORK                              R11 R12 K27 [1]
       94 SETTABLEKS                       R11 R10 K19 ["LayoutOrder"]
       96 DUPTABLE                         R11 K32 [{"UIPadding", "ByLabel", "NameLabel", "DeleteButton"}]
       97 GETUPVAL                         R12 2
       98 GETTABLEKS                       R12 R12 K13 ["createElement"]
      100 LOADK                            R13 K28 ["UIPadding"]
      101 DUPTABLE                         R14 K35 [{"PaddingLeft", "PaddingRight"}]
      102 GETIMPORT                        R15 K37 [UDim.new]
      104 LOADN                            R16 0
      105 LOADN                            R17 4
      106 CALL                             R15 2 1
      107 SETTABLEKS                       R15 R14 K33 ["PaddingLeft"]
      109 GETIMPORT                        R15 K37 [UDim.new]
      111 LOADN                            R16 0
      112 LOADN                            R17 4
      113 CALL                             R15 2 1
      114 SETTABLEKS                       R15 R14 K34 ["PaddingRight"]
      116 CALL                             R12 2 1
      117 SETTABLEKS                       R12 R11 K28 ["UIPadding"]
      119 GETUPVAL                         R12 2
      120 GETTABLEKS                       R12 R12 K13 ["createElement"]
      122 LOADK                            R13 K38 ["TextLabel"]
      123 DUPTABLE                         R14 K45 [{"Font", "TextSize", "TextColor3", "Size", "BackgroundTransparency", "ZIndex", "Text"}]
      124 GETUPVAL                         R15 1
      125 GETTABLEKS                       R15 R15 K10 ["FONT_BOLD"]
      127 SETTABLEKS                       R15 R14 K39 ["Font"]
      129 GETUPVAL                         R15 1
      130 GETTABLEKS                       R15 R15 K9 ["FONT_SIZE_MEDIUM"]
      132 SETTABLEKS                       R15 R14 K40 ["TextSize"]
      134 GETTABLEKS                       R15 R1 K23 ["searchTag"]
      136 GETTABLEKS                       R15 R15 K46 ["textColor"]
      138 SETTABLEKS                       R15 R14 K41 ["TextColor3"]
      140 GETIMPORT                        R15 K22 [UDim2.new]
      142 LOADN                            R16 0
      143 MOVE                             R17 R6
      144 LOADN                            R18 1
      145 LOADN                            R19 0
      146 CALL                             R15 4 1
      147 SETTABLEKS                       R15 R14 K14 ["Size"]
      149 LOADN                            R15 1
      150 SETTABLEKS                       R15 R14 K42 ["BackgroundTransparency"]
      152 LOADN                            R15 2
      153 SETTABLEKS                       R15 R14 K43 ["ZIndex"]
      155 SETTABLEKS                       R2 R14 K44 ["Text"]
      157 CALL                             R12 2 1
      158 SETTABLEKS                       R12 R11 K29 ["ByLabel"]
      160 GETUPVAL                         R12 2
      161 GETTABLEKS                       R12 R12 K13 ["createElement"]
      163 LOADK                            R13 K38 ["TextLabel"]
      164 DUPTABLE                         R14 K47 [{"Font", "TextSize", "TextColor3", "Size", "Position", "BackgroundTransparency", "ZIndex", "Text"}]
      165 GETUPVAL                         R15 1
      166 GETTABLEKS                       R15 R15 K48 ["FONT"]
      168 SETTABLEKS                       R15 R14 K39 ["Font"]
      170 GETUPVAL                         R15 1
      171 GETTABLEKS                       R15 R15 K9 ["FONT_SIZE_MEDIUM"]
      173 SETTABLEKS                       R15 R14 K40 ["TextSize"]
      175 GETTABLEKS                       R15 R1 K23 ["searchTag"]
      177 GETTABLEKS                       R15 R15 K46 ["textColor"]
      179 SETTABLEKS                       R15 R14 K41 ["TextColor3"]
      181 GETIMPORT                        R15 K22 [UDim2.new]
      183 LOADN                            R16 0
      184 MOVE                             R17 R5
      185 LOADN                            R18 1
      186 LOADN                            R19 0
      187 CALL                             R15 4 1
      188 SETTABLEKS                       R15 R14 K14 ["Size"]
      190 GETIMPORT                        R15 K22 [UDim2.new]
      192 LOADN                            R16 0
      193 ADDK                             R17 R6 K49 [4]
      194 LOADN                            R18 0
      195 LOADN                            R19 0
      196 CALL                             R15 4 1
      197 SETTABLEKS                       R15 R14 K18 ["Position"]
      199 LOADN                            R15 1
      200 SETTABLEKS                       R15 R14 K42 ["BackgroundTransparency"]
      202 LOADN                            R15 2
      203 SETTABLEKS                       R15 R14 K43 ["ZIndex"]
      205 SETTABLEKS                       R3 R14 K44 ["Text"]
      207 CALL                             R12 2 1
      208 SETTABLEKS                       R12 R11 K30 ["NameLabel"]
      210 GETUPVAL                         R12 2
      211 GETTABLEKS                       R12 R12 K13 ["createElement"]
      213 LOADK                            R13 K50 ["ImageButton"]
      214 NEWTABLE                         R14 8 0
      216 GETIMPORT                        R15 K7 [Vector2.new]
      218 LOADN                            R16 1
      219 LOADK                            R17 K26 [0.5]
      220 CALL                             R15 2 1
      221 SETTABLEKS                       R15 R14 K17 ["AnchorPoint"]
      223 GETIMPORT                        R15 K22 [UDim2.new]
      225 LOADN                            R16 1
      226 LOADN                            R17 0
      227 LOADK                            R18 K26 [0.5]
      228 LOADN                            R19 0
      229 CALL                             R15 4 1
      230 SETTABLEKS                       R15 R14 K18 ["Position"]
      232 GETIMPORT                        R15 K22 [UDim2.new]
      234 LOADN                            R16 0
      235 LOADN                            R17 10
      236 LOADN                            R18 0
      237 LOADN                            R19 10
      238 CALL                             R15 4 1
      239 SETTABLEKS                       R15 R14 K14 ["Size"]
      241 LOADN                            R15 1
      242 SETTABLEKS                       R15 R14 K42 ["BackgroundTransparency"]
      244 GETUPVAL                         R15 5
      245 GETTABLEKS                       R15 R15 K51 ["DELETE_BUTTON"]
      247 SETTABLEKS                       R15 R14 K52 ["Image"]
      249 GETTABLEKS                       R15 R1 K23 ["searchTag"]
      251 GETTABLEKS                       R15 R15 K46 ["textColor"]
      253 SETTABLEKS                       R15 R14 K53 ["ImageColor3"]
      255 GETUPVAL                         R15 2
      256 GETTABLEKS                       R15 R15 K54 ["Event"]
      258 GETTABLEKS                       R15 R15 K55 ["Activated"]
      260 SETTABLE                         R4 R14 R15
      261 CALL                             R12 2 1
      262 SETTABLEKS                       R12 R11 K31 ["DeleteButton"]
      264 CALL                             R8 3 -1
      265 RETURN                           R8 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETTABLEKS                       R0 R0 K2 ["Parent"]
       11 GETTABLEKS                       R1 R0 K3 ["Packages"]
       13 GETIMPORT                        R2 K5 [require]
       15 GETTABLEKS                       R3 R1 K6 ["Roact"]
       17 CALL                             R2 1 1
       18 GETIMPORT                        R3 K5 [require]
       20 GETTABLEKS                       R4 R1 K7 ["Framework"]
       22 CALL                             R3 1 1
       23 GETIMPORT                        R4 K5 [require]
       25 GETTABLEKS                       R5 R0 K8 ["Src"]
       27 GETTABLEKS                       R5 R5 K9 ["Util"]
       29 GETTABLEKS                       R5 R5 K10 ["Images"]
       31 CALL                             R4 1 1
       32 GETIMPORT                        R5 K5 [require]
       34 GETTABLEKS                       R6 R0 K8 ["Src"]
       36 GETTABLEKS                       R6 R6 K9 ["Util"]
       38 GETTABLEKS                       R6 R6 K11 ["Constants"]
       40 CALL                             R5 1 1
       41 GETIMPORT                        R6 K5 [require]
       43 GETTABLEKS                       R7 R0 K8 ["Src"]
       45 GETTABLEKS                       R7 R7 K12 ["Components"]
       47 GETTABLEKS                       R7 R7 K13 ["RoundFrame"]
       49 CALL                             R6 1 1
       50 GETTABLEKS                       R7 R3 K14 ["ContextServices"]
       52 GETTABLEKS                       R8 R7 K15 ["withContext"]
       54 GETTABLEKS                       R9 R3 K9 ["Util"]
       56 GETTABLEKS                       R9 R9 K16 ["GetTextSize"]
       58 GETTABLEKS                       R10 R5 K17 ["SEARCH_TAG_HEIGHT"]
       60 GETTABLEKS                       R11 R2 K18 ["PureComponent"]
       62 LOADK                            R13 K19 ["SearchTag"]
       63 NAMECALL                         R11 R11 K20 ["extend"]
       65 CALL                             R11 2 1
       66 DUPTABLE                         R12 K23 [{"Name", "prefix"}]
       67 LOADK                            R13 K24 [""]
       68 SETTABLEKS                       R13 R12 K21 ["Name"]
       70 LOADK                            R13 K24 [""]
       71 SETTABLEKS                       R13 R12 K22 ["prefix"]
       73 SETTABLEKS                       R12 R11 K25 ["defaultProps"]
       75 DUPCLOSURE                       R12 K26 [PROTO_0]
       76 CAPTURE                          VAL R9
       77 CAPTURE                          VAL R5
       78 CAPTURE                          VAL R2
       79 CAPTURE                          VAL R6
       80 CAPTURE                          VAL R10
       81 CAPTURE                          VAL R4
       82 SETTABLEKS                       R12 R11 K27 ["render"]
       84 MOVE                             R12 R8
       85 DUPTABLE                         R13 K29 [{"Stylizer"}]
       86 GETTABLEKS                       R14 R7 K28 ["Stylizer"]
       88 SETTABLEKS                       R14 R13 K28 ["Stylizer"]
       90 CALL                             R12 1 1
       91 MOVE                             R13 R11
       92 CALL                             R12 1 1
       93 MOVE                             R11 R12
       94 RETURN                           R11 1
