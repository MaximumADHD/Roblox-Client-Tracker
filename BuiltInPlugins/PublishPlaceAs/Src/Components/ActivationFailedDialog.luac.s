PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["OnLearnMore"]
        3 JUMPIFNOT                        R0 ; [+4]
        4 GETUPVAL                         R1 0
        5 GETTABLEKS                       R0 R1 K0 ["OnLearnMore"]
        7 CALL                             R0 0 0
        8 GETUPVAL                         R1 0
        9 GETTABLEKS                       R0 R1 K1 ["OnClose"]
       11 CALL                             R0 0 0
       12 RETURN                           R0 0

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Stylizer"]
        4 GETTABLEKS                       R3 R1 K2 ["Localization"]
        6 GETUPVAL                         R5 0
        7 GETTABLEKS                       R4 R5 K3 ["createElement"]
        9 GETUPVAL                         R5 1
       10 DUPTABLE                         R6 K12 [{"Size", "Position", "AnchorPoint", "BackgroundColor3", "Style", "Layout", "Padding", "Spacing"}]
       11 GETIMPORT                        R7 K15 [UDim2.fromOffset]
       13 LOADN                            R8 144
       14 LOADN                            R9 180
       15 CALL                             R7 2 1
       16 SETTABLEKS                       R7 R6 K4 ["Size"]
       18 GETIMPORT                        R7 K17 [UDim2.fromScale]
       20 LOADK                            R8 K18 [0.5]
       21 LOADK                            R9 K18 [0.5]
       22 CALL                             R7 2 1
       23 SETTABLEKS                       R7 R6 K5 ["Position"]
       25 GETIMPORT                        R7 K21 [Vector2.new]
       27 LOADK                            R8 K18 [0.5]
       28 LOADK                            R9 K18 [0.5]
       29 CALL                             R7 2 1
       30 SETTABLEKS                       R7 R6 K6 ["AnchorPoint"]
       32 GETTABLEKS                       R7 R2 K22 ["backgroundColor"]
       34 SETTABLEKS                       R7 R6 K7 ["BackgroundColor3"]
       36 LOADK                            R7 K23 ["Box"]
       37 SETTABLEKS                       R7 R6 K8 ["Style"]
       39 GETIMPORT                        R7 K27 [Enum.FillDirection.Vertical]
       41 SETTABLEKS                       R7 R6 K9 ["Layout"]
       43 LOADN                            R7 20
       44 SETTABLEKS                       R7 R6 K10 ["Padding"]
       46 LOADN                            R7 15
       47 SETTABLEKS                       R7 R6 K11 ["Spacing"]
       49 DUPTABLE                         R7 K31 [{"Title", "Body", "Buttons"}]
       50 GETUPVAL                         R9 0
       51 GETTABLEKS                       R8 R9 K3 ["createElement"]
       53 LOADK                            R9 K32 ["TextLabel"]
       54 DUPTABLE                         R10 K40 [{"Text", "Font", "TextSize", "TextColor3", "BackgroundTransparency", "Size", "TextXAlignment", "LayoutOrder"}]
       55 LOADK                            R13 K41 ["Error"]
       56 LOADK                            R14 K42 ["PublishLimitReachedTitle"]
       57 NAMECALL                         R11 R3 K43 ["getText"]
       59 CALL                             R11 3 1
       60 SETTABLEKS                       R11 R10 K33 ["Text"]
       62 GETTABLEKS                       R12 R2 K44 ["header"]
       64 GETTABLEKS                       R11 R12 K45 ["font"]
       66 SETTABLEKS                       R11 R10 K34 ["Font"]
       68 LOADN                            R11 24
       69 SETTABLEKS                       R11 R10 K35 ["TextSize"]
       71 GETTABLEKS                       R11 R2 K46 ["textColor"]
       73 SETTABLEKS                       R11 R10 K36 ["TextColor3"]
       75 LOADN                            R11 1
       76 SETTABLEKS                       R11 R10 K37 ["BackgroundTransparency"]
       78 GETIMPORT                        R11 K47 [UDim2.new]
       80 LOADN                            R12 1
       81 LOADN                            R13 0
       82 LOADN                            R14 0
       83 LOADN                            R15 30
       84 CALL                             R11 4 1
       85 SETTABLEKS                       R11 R10 K4 ["Size"]
       87 GETIMPORT                        R11 K49 [Enum.TextXAlignment.Left]
       89 SETTABLEKS                       R11 R10 K38 ["TextXAlignment"]
       91 LOADN                            R11 1
       92 SETTABLEKS                       R11 R10 K39 ["LayoutOrder"]
       94 CALL                             R8 2 1
       95 SETTABLEKS                       R8 R7 K28 ["Title"]
       97 GETUPVAL                         R9 0
       98 GETTABLEKS                       R8 R9 K3 ["createElement"]
      100 LOADK                            R9 K32 ["TextLabel"]
      101 DUPTABLE                         R10 K52 [{"Text", "Font", "TextSize", "TextColor3", "BackgroundTransparency", "TextWrapped", "Size", "TextXAlignment", "TextYAlignment", "LayoutOrder"}]
      102 LOADK                            R13 K41 ["Error"]
      103 LOADK                            R14 K53 ["PublishlimitReachedDescription"]
      104 NAMECALL                         R11 R3 K43 ["getText"]
      106 CALL                             R11 3 1
      107 SETTABLEKS                       R11 R10 K33 ["Text"]
      109 GETTABLEKS                       R12 R2 K44 ["header"]
      111 GETTABLEKS                       R11 R12 K45 ["font"]
      113 SETTABLEKS                       R11 R10 K34 ["Font"]
      115 LOADN                            R11 20
      116 SETTABLEKS                       R11 R10 K35 ["TextSize"]
      118 GETTABLEKS                       R11 R2 K46 ["textColor"]
      120 SETTABLEKS                       R11 R10 K36 ["TextColor3"]
      122 LOADN                            R11 1
      123 SETTABLEKS                       R11 R10 K37 ["BackgroundTransparency"]
      125 LOADB                            R11 1
      126 SETTABLEKS                       R11 R10 K50 ["TextWrapped"]
      128 GETIMPORT                        R11 K47 [UDim2.new]
      130 LOADN                            R12 1
      131 LOADN                            R13 0
      132 LOADN                            R14 1
      133 LOADN                            R15 176
      134 CALL                             R11 4 1
      135 SETTABLEKS                       R11 R10 K4 ["Size"]
      137 GETIMPORT                        R11 K49 [Enum.TextXAlignment.Left]
      139 SETTABLEKS                       R11 R10 K38 ["TextXAlignment"]
      141 GETIMPORT                        R11 K55 [Enum.TextYAlignment.Top]
      143 SETTABLEKS                       R11 R10 K51 ["TextYAlignment"]
      145 LOADN                            R11 2
      146 SETTABLEKS                       R11 R10 K39 ["LayoutOrder"]
      148 CALL                             R8 2 1
      149 SETTABLEKS                       R8 R7 K29 ["Body"]
      151 GETUPVAL                         R9 0
      152 GETTABLEKS                       R8 R9 K3 ["createElement"]
      154 GETUPVAL                         R9 1
      155 DUPTABLE                         R10 K57 [{"Layout", "HorizontalAlignment", "Spacing", "Size", "LayoutOrder"}]
      156 GETIMPORT                        R11 K59 [Enum.FillDirection.Horizontal]
      158 SETTABLEKS                       R11 R10 K9 ["Layout"]
      160 GETIMPORT                        R11 K61 [Enum.HorizontalAlignment.Right]
      162 SETTABLEKS                       R11 R10 K56 ["HorizontalAlignment"]
      164 LOADN                            R11 10
      165 SETTABLEKS                       R11 R10 K11 ["Spacing"]
      167 GETIMPORT                        R11 K47 [UDim2.new]
      169 LOADN                            R12 1
      170 LOADN                            R13 0
      171 LOADN                            R14 0
      172 LOADN                            R15 35
      173 CALL                             R11 4 1
      174 SETTABLEKS                       R11 R10 K4 ["Size"]
      176 LOADN                            R11 3
      177 SETTABLEKS                       R11 R10 K39 ["LayoutOrder"]
      179 DUPTABLE                         R11 K64 [{"OkButton", "LearnMoreButton"}]
      180 GETUPVAL                         R13 0
      181 GETTABLEKS                       R12 R13 K3 ["createElement"]
      183 GETUPVAL                         R13 2
      184 DUPTABLE                         R14 K66 [{"Style", "Text", "Size", "OnClick", "LayoutOrder"}]
      185 LOADK                            R15 K67 ["RoundPrimary"]
      186 SETTABLEKS                       R15 R14 K8 ["Style"]
      188 LOADK                            R17 K68 ["Button"]
      189 LOADK                            R18 K69 ["Ok"]
      190 NAMECALL                         R15 R3 K43 ["getText"]
      192 CALL                             R15 3 1
      193 SETTABLEKS                       R15 R14 K33 ["Text"]
      195 GETIMPORT                        R15 K15 [UDim2.fromOffset]
      197 LOADN                            R16 100
      198 LOADN                            R17 35
      199 CALL                             R15 2 1
      200 SETTABLEKS                       R15 R14 K4 ["Size"]
      202 GETTABLEKS                       R15 R1 K70 ["OnClose"]
      204 SETTABLEKS                       R15 R14 K65 ["OnClick"]
      206 LOADN                            R15 1
      207 SETTABLEKS                       R15 R14 K39 ["LayoutOrder"]
      209 CALL                             R12 2 1
      210 SETTABLEKS                       R12 R11 K62 ["OkButton"]
      212 GETUPVAL                         R13 0
      213 GETTABLEKS                       R12 R13 K3 ["createElement"]
      215 GETUPVAL                         R13 2
      216 DUPTABLE                         R14 K66 [{"Style", "Text", "Size", "OnClick", "LayoutOrder"}]
      217 LOADK                            R15 K71 ["Round"]
      218 SETTABLEKS                       R15 R14 K8 ["Style"]
      220 LOADK                            R17 K68 ["Button"]
      221 LOADK                            R18 K72 ["LearnMore"]
      222 NAMECALL                         R15 R3 K43 ["getText"]
      224 CALL                             R15 3 1
      225 SETTABLEKS                       R15 R14 K33 ["Text"]
      227 GETIMPORT                        R15 K15 [UDim2.fromOffset]
      229 LOADN                            R16 120
      230 LOADN                            R17 35
      231 CALL                             R15 2 1
      232 SETTABLEKS                       R15 R14 K4 ["Size"]
      234 NEWCLOSURE                       R15 P0
      235 CAPTURE                          VAL R1
      236 SETTABLEKS                       R15 R14 K65 ["OnClick"]
      238 LOADN                            R15 2
      239 SETTABLEKS                       R15 R14 K39 ["LayoutOrder"]
      241 CALL                             R12 2 1
      242 SETTABLEKS                       R12 R11 K63 ["LearnMoreButton"]
      244 CALL                             R8 3 1
      245 SETTABLEKS                       R8 R7 K30 ["Buttons"]
      247 CALL                             R4 3 -1
      248 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R3 K1 [script]
        3 GETTABLEKS                       R2 R3 K2 ["Parent"]
        5 GETTABLEKS                       R1 R2 K2 ["Parent"]
        7 GETTABLEKS                       R0 R1 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R3 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R3 K6 ["Roact"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R4 R0 K5 ["Packages"]
       20 GETTABLEKS                       R3 R4 K7 ["Framework"]
       22 CALL                             R2 1 1
       23 GETTABLEKS                       R3 R2 K8 ["ContextServices"]
       25 GETTABLEKS                       R4 R3 K9 ["withContext"]
       27 GETTABLEKS                       R5 R2 K10 ["UI"]
       29 GETTABLEKS                       R6 R5 K11 ["Button"]
       31 GETTABLEKS                       R7 R5 K12 ["Pane"]
       33 GETTABLEKS                       R8 R1 K13 ["PureComponent"]
       35 LOADK                            R10 K14 ["ActivationFailedDialog"]
       36 NAMECALL                         R8 R8 K15 ["extend"]
       38 CALL                             R8 2 1
       39 DUPCLOSURE                       R9 K16 [PROTO_1]
       40 CAPTURE                          VAL R1
       41 CAPTURE                          VAL R7
       42 CAPTURE                          VAL R6
       43 SETTABLEKS                       R9 R8 K17 ["render"]
       45 MOVE                             R9 R4
       46 DUPTABLE                         R10 K20 [{"Stylizer", "Localization"}]
       47 GETTABLEKS                       R11 R3 K18 ["Stylizer"]
       49 SETTABLEKS                       R11 R10 K18 ["Stylizer"]
       51 GETTABLEKS                       R11 R3 K19 ["Localization"]
       53 SETTABLEKS                       R11 R10 K19 ["Localization"]
       55 CALL                             R9 1 1
       56 MOVE                             R10 R8
       57 CALL                             R9 1 1
       58 MOVE                             R8 R9
       59 RETURN                           R8 1
