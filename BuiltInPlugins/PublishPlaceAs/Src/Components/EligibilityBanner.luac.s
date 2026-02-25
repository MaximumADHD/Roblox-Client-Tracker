PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["OpenBrowserWindow"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_1:
        0 DUPCLOSURE                       R1 K0 [PROTO_0]
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 SETTABLEKS                       R1 R0 K1 ["onManageClick"]
        5 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Stylizer"]
        4 GETTABLEKS                       R3 R1 K2 ["Localization"]
        6 LOADK                            R6 K3 ["Banner"]
        7 LOADK                            R7 K4 ["PublishEligibility"]
        8 NAMECALL                         R4 R3 K5 ["getText"]
       10 CALL                             R4 3 1
       11 LOADK                            R7 K6 ["Button"]
       12 LOADK                            R8 K7 ["Manage"]
       13 NAMECALL                         R5 R3 K5 ["getText"]
       15 CALL                             R5 3 1
       16 GETUPVAL                         R7 0
       17 GETTABLEKS                       R6 R7 K8 ["createElement"]
       19 LOADK                            R7 K9 ["Frame"]
       20 DUPTABLE                         R8 K15 [{"Position", "Size", "AutomaticSize", "BackgroundColor3", "BackgroundTransparency"}]
       21 GETTABLEKS                       R9 R1 K10 ["Position"]
       23 SETTABLEKS                       R9 R8 K10 ["Position"]
       25 GETIMPORT                        R9 K18 [UDim2.new]
       27 LOADN                            R10 1
       28 LOADN                            R11 0
       29 LOADN                            R12 0
       30 LOADN                            R13 0
       31 CALL                             R9 4 1
       32 SETTABLEKS                       R9 R8 K11 ["Size"]
       34 GETIMPORT                        R9 K21 [Enum.AutomaticSize.Y]
       36 SETTABLEKS                       R9 R8 K12 ["AutomaticSize"]
       38 GETTABLEKS                       R10 R2 K22 ["eligibilityBanner"]
       40 GETTABLEKS                       R9 R10 K23 ["backgroundColor"]
       42 SETTABLEKS                       R9 R8 K13 ["BackgroundColor3"]
       44 LOADN                            R9 0
       45 SETTABLEKS                       R9 R8 K14 ["BackgroundTransparency"]
       47 DUPTABLE                         R9 K28 [{"UICorner", "UIPadding", "LeftContent", "ManageButton"}]
       48 GETUPVAL                         R11 0
       49 GETTABLEKS                       R10 R11 K8 ["createElement"]
       51 LOADK                            R11 K24 ["UICorner"]
       52 DUPTABLE                         R12 K30 [{"CornerRadius"}]
       53 GETIMPORT                        R13 K32 [UDim.new]
       55 LOADN                            R14 0
       56 LOADN                            R15 8
       57 CALL                             R13 2 1
       58 SETTABLEKS                       R13 R12 K29 ["CornerRadius"]
       60 CALL                             R10 2 1
       61 SETTABLEKS                       R10 R9 K24 ["UICorner"]
       63 GETUPVAL                         R11 0
       64 GETTABLEKS                       R10 R11 K8 ["createElement"]
       66 LOADK                            R11 K25 ["UIPadding"]
       67 DUPTABLE                         R12 K37 [{"PaddingTop", "PaddingBottom", "PaddingLeft", "PaddingRight"}]
       68 GETIMPORT                        R13 K32 [UDim.new]
       70 LOADN                            R14 0
       71 LOADN                            R15 12
       72 CALL                             R13 2 1
       73 SETTABLEKS                       R13 R12 K33 ["PaddingTop"]
       75 GETIMPORT                        R13 K32 [UDim.new]
       77 LOADN                            R14 0
       78 LOADN                            R15 12
       79 CALL                             R13 2 1
       80 SETTABLEKS                       R13 R12 K34 ["PaddingBottom"]
       82 GETIMPORT                        R13 K32 [UDim.new]
       84 LOADN                            R14 0
       85 LOADN                            R15 16
       86 CALL                             R13 2 1
       87 SETTABLEKS                       R13 R12 K35 ["PaddingLeft"]
       89 GETIMPORT                        R13 K32 [UDim.new]
       91 LOADN                            R14 0
       92 LOADN                            R15 16
       93 CALL                             R13 2 1
       94 SETTABLEKS                       R13 R12 K36 ["PaddingRight"]
       96 CALL                             R10 2 1
       97 SETTABLEKS                       R10 R9 K25 ["UIPadding"]
       99 GETUPVAL                         R11 0
      100 GETTABLEKS                       R10 R11 K8 ["createElement"]
      102 GETUPVAL                         R11 1
      103 DUPTABLE                         R12 K42 [{"Size", "AutomaticSize", "Layout", "Spacing", "HorizontalAlignment", "VerticalAlignment", "BackgroundTransparency"}]
      104 GETIMPORT                        R13 K18 [UDim2.new]
      106 LOADN                            R14 1
      107 LOADN                            R15 156
      108 LOADN                            R16 0
      109 LOADN                            R17 0
      110 CALL                             R13 4 1
      111 SETTABLEKS                       R13 R12 K11 ["Size"]
      113 GETIMPORT                        R13 K21 [Enum.AutomaticSize.Y]
      115 SETTABLEKS                       R13 R12 K12 ["AutomaticSize"]
      117 GETIMPORT                        R13 K45 [Enum.FillDirection.Horizontal]
      119 SETTABLEKS                       R13 R12 K38 ["Layout"]
      121 LOADN                            R13 12
      122 SETTABLEKS                       R13 R12 K39 ["Spacing"]
      124 GETIMPORT                        R13 K47 [Enum.HorizontalAlignment.Left]
      126 SETTABLEKS                       R13 R12 K40 ["HorizontalAlignment"]
      128 GETIMPORT                        R13 K49 [Enum.VerticalAlignment.Center]
      130 SETTABLEKS                       R13 R12 K41 ["VerticalAlignment"]
      132 LOADN                            R13 1
      133 SETTABLEKS                       R13 R12 K14 ["BackgroundTransparency"]
      135 DUPTABLE                         R13 K52 [{"InfoIcon", "BannerText"}]
      136 GETUPVAL                         R15 0
      137 GETTABLEKS                       R14 R15 K8 ["createElement"]
      139 LOADK                            R15 K53 ["ImageLabel"]
      140 DUPTABLE                         R16 K56 [{"Image", "BackgroundTransparency", "Size", "LayoutOrder"}]
      141 GETTABLEKS                       R18 R2 K57 ["genreInfo"]
      143 GETTABLEKS                       R17 R18 K58 ["image"]
      145 SETTABLEKS                       R17 R16 K54 ["Image"]
      147 LOADN                            R17 1
      148 SETTABLEKS                       R17 R16 K14 ["BackgroundTransparency"]
      150 GETIMPORT                        R17 K60 [UDim2.fromOffset]
      152 GETTABLEKS                       R19 R2 K57 ["genreInfo"]
      154 GETTABLEKS                       R18 R19 K61 ["imageSize"]
      156 GETTABLEKS                       R20 R2 K57 ["genreInfo"]
      158 GETTABLEKS                       R19 R20 K61 ["imageSize"]
      160 CALL                             R17 2 1
      161 SETTABLEKS                       R17 R16 K11 ["Size"]
      163 LOADN                            R17 0
      164 SETTABLEKS                       R17 R16 K55 ["LayoutOrder"]
      166 CALL                             R14 2 1
      167 SETTABLEKS                       R14 R13 K50 ["InfoIcon"]
      169 GETUPVAL                         R15 0
      170 GETTABLEKS                       R14 R15 K8 ["createElement"]
      172 LOADK                            R15 K62 ["TextLabel"]
      173 GETUPVAL                         R18 2
      174 GETTABLEKS                       R17 R18 K63 ["Dictionary"]
      176 GETTABLEKS                       R16 R17 K64 ["join"]
      178 GETTABLEKS                       R18 R2 K65 ["fontStyle"]
      180 GETTABLEKS                       R17 R18 K66 ["Normal"]
      182 DUPTABLE                         R18 K72 [{"Text", "TextColor3", "TextXAlignment", "TextYAlignment", "TextWrapped", "AutomaticSize", "BackgroundTransparency", "LayoutOrder"}]
      183 SETTABLEKS                       R4 R18 K67 ["Text"]
      185 GETTABLEKS                       R20 R2 K22 ["eligibilityBanner"]
      187 GETTABLEKS                       R19 R20 K73 ["textColor"]
      189 SETTABLEKS                       R19 R18 K68 ["TextColor3"]
      191 GETIMPORT                        R19 K74 [Enum.TextXAlignment.Left]
      193 SETTABLEKS                       R19 R18 K69 ["TextXAlignment"]
      195 GETIMPORT                        R19 K75 [Enum.TextYAlignment.Center]
      197 SETTABLEKS                       R19 R18 K70 ["TextYAlignment"]
      199 LOADB                            R19 1
      200 SETTABLEKS                       R19 R18 K71 ["TextWrapped"]
      202 GETIMPORT                        R19 K77 [Enum.AutomaticSize.XY]
      204 SETTABLEKS                       R19 R18 K12 ["AutomaticSize"]
      206 LOADN                            R19 1
      207 SETTABLEKS                       R19 R18 K14 ["BackgroundTransparency"]
      209 LOADN                            R19 1
      210 SETTABLEKS                       R19 R18 K55 ["LayoutOrder"]
      212 CALL                             R16 2 -1
      213 CALL                             R14 -1 1
      214 SETTABLEKS                       R14 R13 K51 ["BannerText"]
      216 CALL                             R10 3 1
      217 SETTABLEKS                       R10 R9 K26 ["LeftContent"]
      219 GETUPVAL                         R11 0
      220 GETTABLEKS                       R10 R11 K8 ["createElement"]
      222 GETUPVAL                         R11 3
      223 DUPTABLE                         R12 K81 [{"Text", "Style", "Size", "Position", "AnchorPoint", "OnClick"}]
      224 SETTABLEKS                       R5 R12 K67 ["Text"]
      226 LOADK                            R13 K27 ["ManageButton"]
      227 SETTABLEKS                       R13 R12 K78 ["Style"]
      229 GETIMPORT                        R13 K60 [UDim2.fromOffset]
      231 LOADN                            R14 80
      232 LOADN                            R15 32
      233 CALL                             R13 2 1
      234 SETTABLEKS                       R13 R12 K11 ["Size"]
      236 GETIMPORT                        R13 K18 [UDim2.new]
      238 LOADN                            R14 1
      239 LOADN                            R15 240
      240 LOADK                            R16 K82 [0.5]
      241 LOADN                            R17 0
      242 CALL                             R13 4 1
      243 SETTABLEKS                       R13 R12 K10 ["Position"]
      245 GETIMPORT                        R13 K84 [Vector2.new]
      247 LOADN                            R14 1
      248 LOADK                            R15 K82 [0.5]
      249 CALL                             R13 2 1
      250 SETTABLEKS                       R13 R12 K79 ["AnchorPoint"]
      252 GETTABLEKS                       R13 R0 K85 ["onManageClick"]
      254 SETTABLEKS                       R13 R12 K80 ["OnClick"]
      256 CALL                             R10 2 1
      257 SETTABLEKS                       R10 R9 K27 ["ManageButton"]
      259 CALL                             R6 3 -1
      260 RETURN                           R6 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R3 K1 [script]
        3 GETTABLEKS                       R2 R3 K2 ["Parent"]
        5 GETTABLEKS                       R1 R2 K2 ["Parent"]
        7 GETTABLEKS                       R0 R1 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [game]
       11 LOADK                            R3 K5 ["GuiService"]
       12 NAMECALL                         R1 R1 K6 ["GetService"]
       14 CALL                             R1 2 1
       15 GETIMPORT                        R2 K8 [require]
       17 GETTABLEKS                       R4 R0 K9 ["Packages"]
       19 GETTABLEKS                       R3 R4 K10 ["Roact"]
       21 CALL                             R2 1 1
       22 GETIMPORT                        R3 K8 [require]
       24 GETTABLEKS                       R5 R0 K9 ["Packages"]
       26 GETTABLEKS                       R4 R5 K11 ["Framework"]
       28 CALL                             R3 1 1
       29 GETTABLEKS                       R4 R3 K12 ["ContextServices"]
       31 GETTABLEKS                       R5 R4 K13 ["withContext"]
       33 GETIMPORT                        R6 K8 [require]
       35 GETTABLEKS                       R8 R0 K9 ["Packages"]
       37 GETTABLEKS                       R7 R8 K14 ["Cryo"]
       39 CALL                             R6 1 1
       40 GETTABLEKS                       R7 R3 K15 ["UI"]
       42 GETTABLEKS                       R8 R7 K16 ["Button"]
       44 GETTABLEKS                       R9 R7 K17 ["Pane"]
       46 GETIMPORT                        R10 K4 [game]
       48 LOADK                            R12 K18 ["StudioPublishEligibilityBannerLink"]
       49 NAMECALL                         R10 R10 K19 ["GetFastString"]
       51 CALL                             R10 2 1
       52 GETTABLEKS                       R11 R2 K20 ["PureComponent"]
       54 LOADK                            R13 K21 ["EligibilityBanner"]
       55 NAMECALL                         R11 R11 K22 ["extend"]
       57 CALL                             R11 2 1
       58 DUPCLOSURE                       R12 K23 [PROTO_1]
       59 CAPTURE                          VAL R1
       60 CAPTURE                          VAL R10
       61 SETTABLEKS                       R12 R11 K24 ["init"]
       63 DUPCLOSURE                       R12 K25 [PROTO_2]
       64 CAPTURE                          VAL R2
       65 CAPTURE                          VAL R9
       66 CAPTURE                          VAL R6
       67 CAPTURE                          VAL R8
       68 SETTABLEKS                       R12 R11 K26 ["render"]
       70 MOVE                             R12 R5
       71 DUPTABLE                         R13 K29 [{"Localization", "Stylizer"}]
       72 GETTABLEKS                       R14 R4 K27 ["Localization"]
       74 SETTABLEKS                       R14 R13 K27 ["Localization"]
       76 GETTABLEKS                       R14 R4 K28 ["Stylizer"]
       78 SETTABLEKS                       R14 R13 K28 ["Stylizer"]
       80 CALL                             R12 1 1
       81 MOVE                             R13 R11
       82 CALL                             R12 1 1
       83 MOVE                             R11 R12
       84 RETURN                           R11 1
