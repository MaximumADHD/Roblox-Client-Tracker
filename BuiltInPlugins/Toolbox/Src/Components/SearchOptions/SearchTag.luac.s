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
      123 DUPTABLE                         R14 K46 [{["Font"], ["TextSize"], ["TextColor3"], ["Size"], ["BackgroundTransparency"] = 1, ["ZIndex"] = 2, ["Text"]}]
      124 GETUPVAL                         R15 1
      125 GETTABLEKS                       R15 R15 K10 ["FONT_BOLD"]
      127 SETTABLEKS                       R15 R14 K39 ["Font"]
      129 GETUPVAL                         R15 1
      130 GETTABLEKS                       R15 R15 K9 ["FONT_SIZE_MEDIUM"]
      132 SETTABLEKS                       R15 R14 K40 ["TextSize"]
      134 GETTABLEKS                       R15 R1 K23 ["searchTag"]
      136 GETTABLEKS                       R15 R15 K47 ["textColor"]
      138 SETTABLEKS                       R15 R14 K41 ["TextColor3"]
      140 GETIMPORT                        R15 K22 [UDim2.new]
      142 LOADN                            R16 0
      143 MOVE                             R17 R6
      144 LOADN                            R18 1
      145 LOADN                            R19 0
      146 CALL                             R15 4 1
      147 SETTABLEKS                       R15 R14 K14 ["Size"]
      149 SETTABLEKS                       R2 R14 K45 ["Text"]
      151 CALL                             R12 2 1
      152 SETTABLEKS                       R12 R11 K29 ["ByLabel"]
      154 GETUPVAL                         R12 2
      155 GETTABLEKS                       R12 R12 K13 ["createElement"]
      157 LOADK                            R13 K38 ["TextLabel"]
      158 DUPTABLE                         R14 K48 [{["Font"], ["TextSize"], ["TextColor3"], ["Size"], ["Position"], ["BackgroundTransparency"] = 1, ["ZIndex"] = 2, ["Text"]}]
      159 GETUPVAL                         R15 1
      160 GETTABLEKS                       R15 R15 K49 ["FONT"]
      162 SETTABLEKS                       R15 R14 K39 ["Font"]
      164 GETUPVAL                         R15 1
      165 GETTABLEKS                       R15 R15 K9 ["FONT_SIZE_MEDIUM"]
      167 SETTABLEKS                       R15 R14 K40 ["TextSize"]
      169 GETTABLEKS                       R15 R1 K23 ["searchTag"]
      171 GETTABLEKS                       R15 R15 K47 ["textColor"]
      173 SETTABLEKS                       R15 R14 K41 ["TextColor3"]
      175 GETIMPORT                        R15 K22 [UDim2.new]
      177 LOADN                            R16 0
      178 MOVE                             R17 R5
      179 LOADN                            R18 1
      180 LOADN                            R19 0
      181 CALL                             R15 4 1
      182 SETTABLEKS                       R15 R14 K14 ["Size"]
      184 GETIMPORT                        R15 K22 [UDim2.new]
      186 LOADN                            R16 0
      187 ADDK                             R17 R6 K50 [4]
      188 LOADN                            R18 0
      189 LOADN                            R19 0
      190 CALL                             R15 4 1
      191 SETTABLEKS                       R15 R14 K18 ["Position"]
      193 SETTABLEKS                       R3 R14 K45 ["Text"]
      195 CALL                             R12 2 1
      196 SETTABLEKS                       R12 R11 K30 ["NameLabel"]
      198 GETUPVAL                         R12 2
      199 GETTABLEKS                       R12 R12 K13 ["createElement"]
      201 LOADK                            R13 K51 ["ImageButton"]
      202 NEWTABLE                         R14 8 0
      204 GETIMPORT                        R15 K7 [Vector2.new]
      206 LOADN                            R16 1
      207 LOADK                            R17 K26 [0.5]
      208 CALL                             R15 2 1
      209 SETTABLEKS                       R15 R14 K17 ["AnchorPoint"]
      211 GETIMPORT                        R15 K22 [UDim2.new]
      213 LOADN                            R16 1
      214 LOADN                            R17 0
      215 LOADK                            R18 K26 [0.5]
      216 LOADN                            R19 0
      217 CALL                             R15 4 1
      218 SETTABLEKS                       R15 R14 K18 ["Position"]
      220 GETIMPORT                        R15 K22 [UDim2.new]
      222 LOADN                            R16 0
      223 LOADN                            R17 10
      224 LOADN                            R18 0
      225 LOADN                            R19 10
      226 CALL                             R15 4 1
      227 SETTABLEKS                       R15 R14 K14 ["Size"]
      229 LOADN                            R15 1
      230 SETTABLEKS                       R15 R14 K42 ["BackgroundTransparency"]
      232 GETUPVAL                         R15 5
      233 GETTABLEKS                       R15 R15 K52 ["DELETE_BUTTON"]
      235 SETTABLEKS                       R15 R14 K53 ["Image"]
      237 GETTABLEKS                       R15 R1 K23 ["searchTag"]
      239 GETTABLEKS                       R15 R15 K47 ["textColor"]
      241 SETTABLEKS                       R15 R14 K54 ["ImageColor3"]
      243 GETUPVAL                         R15 2
      244 GETTABLEKS                       R15 R15 K55 ["Event"]
      246 GETTABLEKS                       R15 R15 K56 ["Activated"]
      248 SETTABLE                         R4 R14 R15
      249 CALL                             R12 2 1
      250 SETTABLEKS                       R12 R11 K31 ["DeleteButton"]
      252 CALL                             R8 3 -1
      253 RETURN                           R8 -1

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
       66 DUPTABLE                         R12 K24 [{["Name"] = "", ["prefix"] = ""}]
       67 SETTABLEKS                       R12 R11 K25 ["defaultProps"]
       69 DUPCLOSURE                       R12 K26 [PROTO_0]
       70 CAPTURE                          VAL R9
       71 CAPTURE                          VAL R5
       72 CAPTURE                          VAL R2
       73 CAPTURE                          VAL R6
       74 CAPTURE                          VAL R10
       75 CAPTURE                          VAL R4
       76 SETTABLEKS                       R12 R11 K27 ["render"]
       78 MOVE                             R12 R8
       79 DUPTABLE                         R13 K29 [{"Stylizer"}]
       80 GETTABLEKS                       R14 R7 K28 ["Stylizer"]
       82 SETTABLEKS                       R14 R13 K28 ["Stylizer"]
       84 CALL                             R12 1 1
       85 MOVE                             R13 R11
       86 CALL                             R12 1 1
       87 MOVE                             R11 R12
       88 RETURN                           R11 1
