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
       60 DUPTABLE                         R10 K23 [{["AnchorPoint"], ["Position"], ["LayoutOrder"], ["Size"], ["BackgroundTransparency"] = 1}]
       61 GETTABLEKS                       R11 R0 K0 ["props"]
       63 GETTABLEKS                       R11 R11 K17 ["AnchorPoint"]
       65 SETTABLEKS                       R11 R10 K17 ["AnchorPoint"]
       67 GETTABLEKS                       R11 R0 K0 ["props"]
       69 GETTABLEKS                       R11 R11 K18 ["Position"]
       71 SETTABLEKS                       R11 R10 K18 ["Position"]
       73 GETTABLEKS                       R11 R0 K0 ["props"]
       75 GETTABLEKS                       R11 R11 K19 ["LayoutOrder"]
       77 SETTABLEKS                       R11 R10 K19 ["LayoutOrder"]
       79 GETIMPORT                        R11 K25 [UDim2.new]
       81 LOADN                            R12 1
       82 LOADN                            R13 0
       83 LOADN                            R14 0
       84 GETUPVAL                         R15 2
       85 GETTABLEKS                       R15 R15 K26 ["FOOTER_BUTTON_HEIGHT"]
       87 CALL                             R11 4 1
       88 SETTABLEKS                       R11 R10 K20 ["Size"]
       90 DUPTABLE                         R11 K30 [{"UIListLayout", "CancelButton", "ApplyButton"}]
       91 GETUPVAL                         R12 1
       92 GETTABLEKS                       R12 R12 K15 ["createElement"]
       94 LOADK                            R13 K27 ["UIListLayout"]
       95 DUPTABLE                         R14 K35 [{"FillDirection", "HorizontalAlignment", "SortOrder", "Padding"}]
       96 GETIMPORT                        R15 K38 [Enum.FillDirection.Horizontal]
       98 SETTABLEKS                       R15 R14 K31 ["FillDirection"]
      100 GETIMPORT                        R15 K40 [Enum.HorizontalAlignment.Right]
      102 SETTABLEKS                       R15 R14 K32 ["HorizontalAlignment"]
      104 GETIMPORT                        R15 K41 [Enum.SortOrder.LayoutOrder]
      106 SETTABLEKS                       R15 R14 K33 ["SortOrder"]
      108 GETIMPORT                        R15 K43 [UDim.new]
      110 LOADN                            R16 0
      111 LOADN                            R17 10
      112 CALL                             R15 2 1
      113 SETTABLEKS                       R15 R14 K34 ["Padding"]
      115 CALL                             R12 2 1
      116 SETTABLEKS                       R12 R11 K27 ["UIListLayout"]
      118 GETUPVAL                         R12 1
      119 GETTABLEKS                       R12 R12 K15 ["createElement"]
      121 GETUPVAL                         R13 3
      122 NEWTABLE                         R14 8 0
      124 LOADN                            R15 1
      125 SETTABLEKS                       R15 R14 K19 ["LayoutOrder"]
      127 GETIMPORT                        R15 K25 [UDim2.new]
      129 LOADN                            R16 0
      130 LOADN                            R18 55
      131 FASTCALL2                        MATH_MAX R18 R5 ; [+4]
      133 MOVE                             R19 R5
      134 GETIMPORT                        R17 K46 [math.max]
      136 CALL                             R17 2 1
      137 LOADN                            R18 1
      138 LOADN                            R19 0
      139 CALL                             R15 4 1
      140 SETTABLEKS                       R15 R14 K20 ["Size"]
      142 GETTABLEKS                       R15 R6 K47 ["backgroundColor"]
      144 SETTABLEKS                       R15 R14 K48 ["BackgroundColor3"]
      146 GETTABLEKS                       R15 R6 K49 ["borderColor"]
      148 SETTABLEKS                       R15 R14 K50 ["BorderColor3"]
      150 GETUPVAL                         R15 1
      151 GETTABLEKS                       R15 R15 K51 ["Event"]
      153 GETTABLEKS                       R15 R15 K52 ["Activated"]
      155 NEWCLOSURE                       R16 P0
      156 CAPTURE                          VAL R0
      157 SETTABLE                         R16 R14 R15
      158 DUPTABLE                         R15 K54 [{"TextLabel"}]
      159 GETUPVAL                         R16 1
      160 GETTABLEKS                       R16 R16 K15 ["createElement"]
      162 LOADK                            R17 K53 ["TextLabel"]
      163 DUPTABLE                         R18 K59 [{["Size"], ["BackgroundTransparency"] = 1, ["Font"], ["TextSize"], ["Text"], ["TextColor3"]}]
      164 GETIMPORT                        R19 K25 [UDim2.new]
      166 LOADN                            R20 1
      167 LOADN                            R21 0
      168 LOADN                            R22 1
      169 LOADN                            R23 0
      170 CALL                             R19 4 1
      171 SETTABLEKS                       R19 R18 K20 ["Size"]
      173 GETUPVAL                         R19 2
      174 GETTABLEKS                       R19 R19 K60 ["FONT"]
      176 SETTABLEKS                       R19 R18 K55 ["Font"]
      178 GETUPVAL                         R19 2
      179 GETTABLEKS                       R19 R19 K61 ["FONT_SIZE_MEDIUM"]
      181 SETTABLEKS                       R19 R18 K56 ["TextSize"]
      183 SETTABLEKS                       R3 R18 K57 ["Text"]
      185 GETTABLEKS                       R19 R6 K62 ["textColor"]
      187 SETTABLEKS                       R19 R18 K58 ["TextColor3"]
      189 CALL                             R16 2 1
      190 SETTABLEKS                       R16 R15 K53 ["TextLabel"]
      192 CALL                             R12 3 1
      193 SETTABLEKS                       R12 R11 K28 ["CancelButton"]
      195 GETUPVAL                         R12 1
      196 GETTABLEKS                       R12 R12 K15 ["createElement"]
      198 GETUPVAL                         R13 3
      199 NEWTABLE                         R14 8 0
      201 LOADN                            R15 2
      202 SETTABLEKS                       R15 R14 K19 ["LayoutOrder"]
      204 GETIMPORT                        R15 K25 [UDim2.new]
      206 LOADN                            R16 0
      207 LOADN                            R18 55
      208 FASTCALL2                        MATH_MAX R18 R4 ; [+4]
      210 MOVE                             R19 R4
      211 GETIMPORT                        R17 K46 [math.max]
      213 CALL                             R17 2 1
      214 LOADN                            R18 1
      215 LOADN                            R19 0
      216 CALL                             R15 4 1
      217 SETTABLEKS                       R15 R14 K20 ["Size"]
      219 GETTABLEKS                       R15 R7 K47 ["backgroundColor"]
      221 SETTABLEKS                       R15 R14 K48 ["BackgroundColor3"]
      223 GETTABLEKS                       R15 R7 K49 ["borderColor"]
      225 SETTABLEKS                       R15 R14 K50 ["BorderColor3"]
      227 GETUPVAL                         R15 1
      228 GETTABLEKS                       R15 R15 K51 ["Event"]
      230 GETTABLEKS                       R15 R15 K52 ["Activated"]
      232 NEWCLOSURE                       R16 P1
      233 CAPTURE                          VAL R0
      234 SETTABLE                         R16 R14 R15
      235 DUPTABLE                         R15 K54 [{"TextLabel"}]
      236 GETUPVAL                         R16 1
      237 GETTABLEKS                       R16 R16 K15 ["createElement"]
      239 LOADK                            R17 K53 ["TextLabel"]
      240 DUPTABLE                         R18 K59 [{["Size"], ["BackgroundTransparency"] = 1, ["Font"], ["TextSize"], ["Text"], ["TextColor3"]}]
      241 GETIMPORT                        R19 K25 [UDim2.new]
      243 LOADN                            R20 1
      244 LOADN                            R21 0
      245 LOADN                            R22 1
      246 LOADN                            R23 0
      247 CALL                             R19 4 1
      248 SETTABLEKS                       R19 R18 K20 ["Size"]
      250 GETUPVAL                         R19 2
      251 GETTABLEKS                       R19 R19 K60 ["FONT"]
      253 SETTABLEKS                       R19 R18 K55 ["Font"]
      255 GETUPVAL                         R19 2
      256 GETTABLEKS                       R19 R19 K61 ["FONT_SIZE_MEDIUM"]
      258 SETTABLEKS                       R19 R18 K56 ["TextSize"]
      260 SETTABLEKS                       R2 R18 K57 ["Text"]
      262 GETTABLEKS                       R19 R7 K62 ["textColor"]
      264 SETTABLEKS                       R19 R18 K58 ["TextColor3"]
      266 CALL                             R16 2 1
      267 SETTABLEKS                       R16 R15 K53 ["TextLabel"]
      269 CALL                             R12 3 1
      270 SETTABLEKS                       R12 R11 K29 ["ApplyButton"]
      272 CALL                             R8 3 -1
      273 RETURN                           R8 -1

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
