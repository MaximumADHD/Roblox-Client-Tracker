PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["props"]
        3 GETTABLEKS                       R2 R2 K1 ["onButtonClicked"]
        5 JUMPIFNOT                        R2 ; [+8]
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R2 R2 K0 ["props"]
        9 GETTABLEKS                       R2 R2 K1 ["onButtonClicked"]
       11 MOVE                             R3 R0
       12 MOVE                             R4 R1
       13 CALL                             R2 2 0
       14 RETURN                           R0 0

PROTO_1:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          VAL R0
        2 SETTABLEKS                       R1 R0 K0 ["onButtonClicked"]
        4 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["onButtonClicked"]
        3 LOADK                            R1 K1 ["Cancel"]
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["onButtonClicked"]
        3 LOADK                            R1 K1 ["Apply"]
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_4:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R1 R1 K1 ["Stylizer"]
        4 GETTABLEKS                       R2 R0 K0 ["props"]
        6 GETTABLEKS                       R2 R2 K2 ["Localization"]
        8 LOADK                            R4 K3 ["General"]
        9 LOADK                            R5 K4 ["SearchOptionsApply"]
       10 NAMECALL                         R2 R2 K5 ["getText"]
       12 CALL                             R2 3 1
       13 GETTABLEKS                       R3 R0 K0 ["props"]
       15 GETTABLEKS                       R3 R3 K2 ["Localization"]
       17 LOADK                            R5 K3 ["General"]
       18 LOADK                            R6 K6 ["SearchOptionsCancel"]
       19 NAMECALL                         R3 R3 K5 ["getText"]
       21 CALL                             R3 3 1
       22 GETUPVAL                         R5 0
       23 MOVE                             R6 R2
       24 LOADNIL                          R7
       25 LOADNIL                          R8
       26 GETIMPORT                        R9 K10 [Vector2.new]
       28 LOADN                            R10 0
       29 LOADN                            R11 0
       30 CALL                             R9 2 -1
       31 CALL                             R5 -1 1
       32 GETTABLEKS                       R5 R5 K11 ["X"]
       34 ADDK                             R4 R5 K7 [20]
       35 GETUPVAL                         R6 0
       36 MOVE                             R7 R3
       37 LOADNIL                          R8
       38 LOADNIL                          R9
       39 GETIMPORT                        R10 K10 [Vector2.new]
       41 LOADN                            R11 0
       42 LOADN                            R12 0
       43 CALL                             R10 2 -1
       44 CALL                             R6 -1 1
       45 GETTABLEKS                       R6 R6 K11 ["X"]
       47 ADDK                             R5 R6 K7 [20]
       48 GETTABLEKS                       R6 R1 K12 ["searchOptions"]
       50 GETTABLEKS                       R6 R6 K13 ["cancelButton"]
       52 GETTABLEKS                       R7 R1 K12 ["searchOptions"]
       54 GETTABLEKS                       R7 R7 K14 ["applyButton"]
       56 GETUPVAL                         R8 1
       57 GETTABLEKS                       R8 R8 K15 ["createElement"]
       59 LOADK                            R9 K16 ["Frame"]
       60 DUPTABLE                         R10 K22 [{"AnchorPoint", "Position", "LayoutOrder", "Size", "BackgroundTransparency"}]
       61 GETTABLEKS                       R11 R0 K0 ["props"]
       63 GETTABLEKS                       R11 R11 K17 ["AnchorPoint"]
       65 SETTABLEKS                       R11 R10 K17 ["AnchorPoint"]
       67 GETTABLEKS                       R11 R0 K0 ["props"]
       69 GETTABLEKS                       R11 R11 K18 ["Position"]
       71 SETTABLEKS                       R11 R10 K18 ["Position"]
       73 GETTABLEKS                       R11 R0 K0 ["props"]
       75 GETTABLEKS                       R11 R11 K19 ["LayoutOrder"]
       77 SETTABLEKS                       R11 R10 K19 ["LayoutOrder"]
       79 GETIMPORT                        R11 K24 [UDim2.new]
       81 LOADN                            R12 1
       82 LOADN                            R13 0
       83 LOADN                            R14 0
       84 GETUPVAL                         R15 2
       85 GETTABLEKS                       R15 R15 K25 ["FOOTER_BUTTON_HEIGHT"]
       87 CALL                             R11 4 1
       88 SETTABLEKS                       R11 R10 K20 ["Size"]
       90 LOADN                            R11 1
       91 SETTABLEKS                       R11 R10 K21 ["BackgroundTransparency"]
       93 DUPTABLE                         R11 K29 [{"UIListLayout", "CancelButton", "ApplyButton"}]
       94 GETUPVAL                         R12 1
       95 GETTABLEKS                       R12 R12 K15 ["createElement"]
       97 LOADK                            R13 K26 ["UIListLayout"]
       98 DUPTABLE                         R14 K34 [{"FillDirection", "HorizontalAlignment", "SortOrder", "Padding"}]
       99 GETIMPORT                        R15 K37 [Enum.FillDirection.Horizontal]
      101 SETTABLEKS                       R15 R14 K30 ["FillDirection"]
      103 GETIMPORT                        R15 K39 [Enum.HorizontalAlignment.Right]
      105 SETTABLEKS                       R15 R14 K31 ["HorizontalAlignment"]
      107 GETIMPORT                        R15 K40 [Enum.SortOrder.LayoutOrder]
      109 SETTABLEKS                       R15 R14 K32 ["SortOrder"]
      111 GETIMPORT                        R15 K42 [UDim.new]
      113 LOADN                            R16 0
      114 LOADN                            R17 10
      115 CALL                             R15 2 1
      116 SETTABLEKS                       R15 R14 K33 ["Padding"]
      118 CALL                             R12 2 1
      119 SETTABLEKS                       R12 R11 K26 ["UIListLayout"]
      121 GETUPVAL                         R12 1
      122 GETTABLEKS                       R12 R12 K15 ["createElement"]
      124 GETUPVAL                         R13 3
      125 NEWTABLE                         R14 8 0
      127 LOADN                            R15 1
      128 SETTABLEKS                       R15 R14 K19 ["LayoutOrder"]
      130 GETIMPORT                        R15 K24 [UDim2.new]
      132 LOADN                            R16 0
      133 LOADN                            R18 55
      134 FASTCALL2                        MATH_MAX R18 R5 ; [+4]
      136 MOVE                             R19 R5
      137 GETIMPORT                        R17 K45 [math.max]
      139 CALL                             R17 2 1
      140 LOADN                            R18 1
      141 LOADN                            R19 0
      142 CALL                             R15 4 1
      143 SETTABLEKS                       R15 R14 K20 ["Size"]
      145 GETTABLEKS                       R15 R6 K46 ["backgroundColor"]
      147 SETTABLEKS                       R15 R14 K47 ["BackgroundColor3"]
      149 GETTABLEKS                       R15 R6 K48 ["borderColor"]
      151 SETTABLEKS                       R15 R14 K49 ["BorderColor3"]
      153 GETUPVAL                         R15 1
      154 GETTABLEKS                       R15 R15 K50 ["Event"]
      156 GETTABLEKS                       R15 R15 K51 ["Activated"]
      158 NEWCLOSURE                       R16 P0
      159 CAPTURE                          VAL R0
      160 SETTABLE                         R16 R14 R15
      161 DUPTABLE                         R15 K53 [{"TextLabel"}]
      162 GETUPVAL                         R16 1
      163 GETTABLEKS                       R16 R16 K15 ["createElement"]
      165 LOADK                            R17 K52 ["TextLabel"]
      166 DUPTABLE                         R18 K58 [{"Size", "BackgroundTransparency", "Font", "TextSize", "Text", "TextColor3"}]
      167 GETIMPORT                        R19 K24 [UDim2.new]
      169 LOADN                            R20 1
      170 LOADN                            R21 0
      171 LOADN                            R22 1
      172 LOADN                            R23 0
      173 CALL                             R19 4 1
      174 SETTABLEKS                       R19 R18 K20 ["Size"]
      176 LOADN                            R19 1
      177 SETTABLEKS                       R19 R18 K21 ["BackgroundTransparency"]
      179 GETUPVAL                         R19 2
      180 GETTABLEKS                       R19 R19 K59 ["FONT"]
      182 SETTABLEKS                       R19 R18 K54 ["Font"]
      184 GETUPVAL                         R19 2
      185 GETTABLEKS                       R19 R19 K60 ["FONT_SIZE_MEDIUM"]
      187 SETTABLEKS                       R19 R18 K55 ["TextSize"]
      189 SETTABLEKS                       R3 R18 K56 ["Text"]
      191 GETTABLEKS                       R19 R6 K61 ["textColor"]
      193 SETTABLEKS                       R19 R18 K57 ["TextColor3"]
      195 CALL                             R16 2 1
      196 SETTABLEKS                       R16 R15 K52 ["TextLabel"]
      198 CALL                             R12 3 1
      199 SETTABLEKS                       R12 R11 K27 ["CancelButton"]
      201 GETUPVAL                         R12 1
      202 GETTABLEKS                       R12 R12 K15 ["createElement"]
      204 GETUPVAL                         R13 3
      205 NEWTABLE                         R14 8 0
      207 LOADN                            R15 2
      208 SETTABLEKS                       R15 R14 K19 ["LayoutOrder"]
      210 GETIMPORT                        R15 K24 [UDim2.new]
      212 LOADN                            R16 0
      213 LOADN                            R18 55
      214 FASTCALL2                        MATH_MAX R18 R4 ; [+4]
      216 MOVE                             R19 R4
      217 GETIMPORT                        R17 K45 [math.max]
      219 CALL                             R17 2 1
      220 LOADN                            R18 1
      221 LOADN                            R19 0
      222 CALL                             R15 4 1
      223 SETTABLEKS                       R15 R14 K20 ["Size"]
      225 GETTABLEKS                       R15 R7 K46 ["backgroundColor"]
      227 SETTABLEKS                       R15 R14 K47 ["BackgroundColor3"]
      229 GETTABLEKS                       R15 R7 K48 ["borderColor"]
      231 SETTABLEKS                       R15 R14 K49 ["BorderColor3"]
      233 GETUPVAL                         R15 1
      234 GETTABLEKS                       R15 R15 K50 ["Event"]
      236 GETTABLEKS                       R15 R15 K51 ["Activated"]
      238 NEWCLOSURE                       R16 P1
      239 CAPTURE                          VAL R0
      240 SETTABLE                         R16 R14 R15
      241 DUPTABLE                         R15 K53 [{"TextLabel"}]
      242 GETUPVAL                         R16 1
      243 GETTABLEKS                       R16 R16 K15 ["createElement"]
      245 LOADK                            R17 K52 ["TextLabel"]
      246 DUPTABLE                         R18 K58 [{"Size", "BackgroundTransparency", "Font", "TextSize", "Text", "TextColor3"}]
      247 GETIMPORT                        R19 K24 [UDim2.new]
      249 LOADN                            R20 1
      250 LOADN                            R21 0
      251 LOADN                            R22 1
      252 LOADN                            R23 0
      253 CALL                             R19 4 1
      254 SETTABLEKS                       R19 R18 K20 ["Size"]
      256 LOADN                            R19 1
      257 SETTABLEKS                       R19 R18 K21 ["BackgroundTransparency"]
      259 GETUPVAL                         R19 2
      260 GETTABLEKS                       R19 R19 K59 ["FONT"]
      262 SETTABLEKS                       R19 R18 K54 ["Font"]
      264 GETUPVAL                         R19 2
      265 GETTABLEKS                       R19 R19 K60 ["FONT_SIZE_MEDIUM"]
      267 SETTABLEKS                       R19 R18 K55 ["TextSize"]
      269 SETTABLEKS                       R2 R18 K56 ["Text"]
      271 GETTABLEKS                       R19 R7 K61 ["textColor"]
      273 SETTABLEKS                       R19 R18 K57 ["TextColor3"]
      275 CALL                             R16 2 1
      276 SETTABLEKS                       R16 R15 K52 ["TextLabel"]
      278 CALL                             R12 3 1
      279 SETTABLEKS                       R12 R11 K28 ["ApplyButton"]
      281 CALL                             R8 3 -1
      282 RETURN                           R8 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETTABLEKS                       R0 R0 K2 ["Parent"]
       11 GETIMPORT                        R1 K4 [require]
       13 GETTABLEKS                       R2 R0 K5 ["Src"]
       15 GETTABLEKS                       R2 R2 K6 ["Util"]
       17 GETTABLEKS                       R2 R2 K7 ["SharedFlags"]
       19 GETTABLEKS                       R2 R2 K8 ["getFFlagToolboxEnableSearchOptionsRefactor"]
       21 CALL                             R1 1 1
       22 GETTABLEKS                       R2 R0 K9 ["Packages"]
       24 GETIMPORT                        R3 K4 [require]
       26 GETTABLEKS                       R4 R2 K10 ["Roact"]
       28 CALL                             R3 1 1
       29 GETIMPORT                        R4 K4 [require]
       31 GETTABLEKS                       R5 R2 K11 ["Framework"]
       33 CALL                             R4 1 1
       34 GETIMPORT                        R5 K4 [require]
       36 GETTABLEKS                       R6 R0 K5 ["Src"]
       38 GETTABLEKS                       R6 R6 K6 ["Util"]
       40 GETTABLEKS                       R6 R6 K12 ["Constants"]
       42 CALL                             R5 1 1
       43 GETTABLEKS                       R6 R4 K13 ["ContextServices"]
       45 GETTABLEKS                       R7 R6 K14 ["withContext"]
       47 GETTABLEKS                       R8 R4 K6 ["Util"]
       49 GETTABLEKS                       R8 R8 K15 ["GetTextSize"]
       51 GETIMPORT                        R9 K4 [require]
       53 GETTABLEKS                       R10 R0 K5 ["Src"]
       55 GETTABLEKS                       R10 R10 K16 ["Components"]
       57 GETTABLEKS                       R10 R10 K17 ["RoundButton"]
       59 CALL                             R9 1 1
       60 GETTABLEKS                       R10 R3 K18 ["PureComponent"]
       62 LOADK                            R12 K19 ["SearchOptionsFooter"]
       63 NAMECALL                         R10 R10 K20 ["extend"]
       65 CALL                             R10 2 1
       66 MOVE                             R11 R1
       67 CALL                             R11 0 1
       68 JUMPIFNOT                        R11 ; [+2]
       69 LOADNIL                          R11
       70 RETURN                           R11 1
       71 DUPCLOSURE                       R11 K21 [PROTO_1]
       72 SETTABLEKS                       R11 R10 K22 ["init"]
       74 DUPCLOSURE                       R11 K23 [PROTO_4]
       75 CAPTURE                          VAL R8
       76 CAPTURE                          VAL R3
       77 CAPTURE                          VAL R5
       78 CAPTURE                          VAL R9
       79 SETTABLEKS                       R11 R10 K24 ["render"]
       81 MOVE                             R11 R7
       82 DUPTABLE                         R12 K27 [{"Localization", "Stylizer"}]
       83 GETTABLEKS                       R13 R6 K25 ["Localization"]
       85 SETTABLEKS                       R13 R12 K25 ["Localization"]
       87 GETTABLEKS                       R13 R6 K26 ["Stylizer"]
       89 SETTABLEKS                       R13 R12 K26 ["Stylizer"]
       91 CALL                             R11 1 1
       92 MOVE                             R12 R10
       93 CALL                             R11 1 1
       94 MOVE                             R10 R11
       95 RETURN                           R10 1
