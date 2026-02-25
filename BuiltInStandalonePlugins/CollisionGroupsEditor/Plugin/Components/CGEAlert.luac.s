PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Localization"]
        4 GETTABLEKS                       R4 R1 K2 ["Stylizer"]
        6 GETTABLEKS                       R3 R4 K3 ["CGEAlert"]
        8 GETTABLEKS                       R4 R1 K4 ["Title"]
       10 GETTABLEKS                       R5 R1 K5 ["Body"]
       12 GETUPVAL                         R7 0
       13 GETTABLEKS                       R6 R7 K6 ["createElement"]
       15 GETUPVAL                         R7 1
       16 DUPTABLE                         R8 K13 [{"LayoutOrder", "AutomaticSize", "Padding", "BackgroundColor3", "Size", "OnClick"}]
       17 LOADN                            R9 1
       18 SETTABLEKS                       R9 R8 K7 ["LayoutOrder"]
       20 GETIMPORT                        R9 K16 [Enum.AutomaticSize.Y]
       22 SETTABLEKS                       R9 R8 K8 ["AutomaticSize"]
       24 GETTABLEKS                       R9 R3 K9 ["Padding"]
       26 SETTABLEKS                       R9 R8 K9 ["Padding"]
       28 GETUPVAL                         R10 2
       29 GETTABLEKS                       R9 R10 K17 ["darker"]
       31 GETTABLEKS                       R10 R3 K18 ["BackgroundColor"]
       33 GETTABLEKS                       R11 R3 K19 ["BackgroundColorHoverDarkerMultiplier"]
       35 CALL                             R9 2 1
       36 SETTABLEKS                       R9 R8 K10 ["BackgroundColor3"]
       38 GETIMPORT                        R9 K22 [UDim2.fromScale]
       40 LOADN                            R10 1
       41 LOADN                            R11 0
       42 CALL                             R9 2 1
       43 SETTABLEKS                       R9 R8 K11 ["Size"]
       45 GETTABLEKS                       R9 R1 K12 ["OnClick"]
       47 SETTABLEKS                       R9 R8 K12 ["OnClick"]
       49 DUPTABLE                         R9 K26 [{"UICorner", "UIStroke", "Inner"}]
       50 GETUPVAL                         R11 0
       51 GETTABLEKS                       R10 R11 K6 ["createElement"]
       53 LOADK                            R11 K23 ["UICorner"]
       54 DUPTABLE                         R12 K28 [{"CornerRadius"}]
       55 GETTABLEKS                       R13 R3 K27 ["CornerRadius"]
       57 SETTABLEKS                       R13 R12 K27 ["CornerRadius"]
       59 CALL                             R10 2 1
       60 SETTABLEKS                       R10 R9 K23 ["UICorner"]
       62 GETUPVAL                         R11 0
       63 GETTABLEKS                       R10 R11 K6 ["createElement"]
       65 LOADK                            R11 K24 ["UIStroke"]
       66 DUPTABLE                         R12 K31 [{"ApplyStrokeMode", "Color"}]
       67 GETIMPORT                        R13 K33 [Enum.ApplyStrokeMode.Border]
       69 SETTABLEKS                       R13 R12 K29 ["ApplyStrokeMode"]
       71 GETTABLEKS                       R13 R3 K34 ["BorderColor"]
       73 SETTABLEKS                       R13 R12 K30 ["Color"]
       75 CALL                             R10 2 1
       76 SETTABLEKS                       R10 R9 K24 ["UIStroke"]
       78 GETUPVAL                         R11 0
       79 GETTABLEKS                       R10 R11 K6 ["createElement"]
       81 GETUPVAL                         R11 1
       82 DUPTABLE                         R12 K38 [{"AutomaticSize", "Padding", "Spacing", "Layout", "HorizontalAlignment", "Size"}]
       83 GETIMPORT                        R13 K16 [Enum.AutomaticSize.Y]
       85 SETTABLEKS                       R13 R12 K8 ["AutomaticSize"]
       87 GETTABLEKS                       R13 R3 K39 ["LinePadding"]
       89 SETTABLEKS                       R13 R12 K9 ["Padding"]
       91 GETTABLEKS                       R13 R3 K40 ["LineSpacing"]
       93 SETTABLEKS                       R13 R12 K35 ["Spacing"]
       95 GETIMPORT                        R13 K43 [Enum.FillDirection.Vertical]
       97 SETTABLEKS                       R13 R12 K36 ["Layout"]
       99 GETIMPORT                        R13 K45 [Enum.HorizontalAlignment.Left]
      101 SETTABLEKS                       R13 R12 K37 ["HorizontalAlignment"]
      103 GETIMPORT                        R13 K22 [UDim2.fromScale]
      105 LOADN                            R14 1
      106 LOADN                            R15 0
      107 CALL                             R13 2 1
      108 SETTABLEKS                       R13 R12 K11 ["Size"]
      110 DUPTABLE                         R13 K47 [{"TopBar", "Body"}]
      111 GETUPVAL                         R15 0
      112 GETTABLEKS                       R14 R15 K6 ["createElement"]
      114 GETUPVAL                         R15 1
      115 DUPTABLE                         R16 K48 [{"AutomaticSize", "LayoutOrder", "Size"}]
      116 GETIMPORT                        R17 K16 [Enum.AutomaticSize.Y]
      118 SETTABLEKS                       R17 R16 K8 ["AutomaticSize"]
      120 LOADN                            R17 1
      121 SETTABLEKS                       R17 R16 K7 ["LayoutOrder"]
      123 GETIMPORT                        R17 K22 [UDim2.fromScale]
      125 LOADN                            R18 1
      126 LOADN                            R19 0
      127 CALL                             R17 2 1
      128 SETTABLEKS                       R17 R16 K11 ["Size"]
      130 DUPTABLE                         R17 K50 [{"Title", "RightSide"}]
      131 GETUPVAL                         R19 0
      132 GETTABLEKS                       R18 R19 K6 ["createElement"]
      134 GETUPVAL                         R19 3
      135 DUPTABLE                         R20 K54 [{"AutomaticSize", "Text", "TextXAlignment", "RichText", "LayoutOrder"}]
      136 GETIMPORT                        R21 K56 [Enum.AutomaticSize.XY]
      138 SETTABLEKS                       R21 R20 K8 ["AutomaticSize"]
      140 LOADK                            R22 K57 ["<b>%*</b>"]
      141 MOVE                             R24 R4
      142 NAMECALL                         R22 R22 K58 ["format"]
      144 CALL                             R22 2 1
      145 MOVE                             R21 R22
      146 SETTABLEKS                       R21 R20 K51 ["Text"]
      148 GETIMPORT                        R21 K59 [Enum.TextXAlignment.Left]
      150 SETTABLEKS                       R21 R20 K52 ["TextXAlignment"]
      152 LOADB                            R21 1
      153 SETTABLEKS                       R21 R20 K53 ["RichText"]
      155 LOADN                            R21 1
      156 SETTABLEKS                       R21 R20 K7 ["LayoutOrder"]
      158 CALL                             R18 2 1
      159 SETTABLEKS                       R18 R17 K4 ["Title"]
      161 GETUPVAL                         R19 0
      162 GETTABLEKS                       R18 R19 K6 ["createElement"]
      164 GETUPVAL                         R19 1
      165 DUPTABLE                         R20 K62 [{"AnchorPoint", "AutomaticSize", "Position", "Size", "LayoutOrder"}]
      166 GETIMPORT                        R21 K65 [Vector2.new]
      168 LOADN                            R22 1
      169 LOADN                            R23 0
      170 CALL                             R21 2 1
      171 SETTABLEKS                       R21 R20 K60 ["AnchorPoint"]
      173 GETIMPORT                        R21 K67 [Enum.AutomaticSize.X]
      175 SETTABLEKS                       R21 R20 K8 ["AutomaticSize"]
      177 GETIMPORT                        R21 K22 [UDim2.fromScale]
      179 LOADN                            R22 1
      180 LOADN                            R23 0
      181 CALL                             R21 2 1
      182 SETTABLEKS                       R21 R20 K61 ["Position"]
      184 GETIMPORT                        R21 K69 [UDim2.fromOffset]
      186 LOADN                            R22 0
      187 LOADN                            R23 18
      188 CALL                             R21 2 1
      189 SETTABLEKS                       R21 R20 K11 ["Size"]
      191 LOADN                            R21 2
      192 SETTABLEKS                       R21 R20 K7 ["LayoutOrder"]
      194 DUPTABLE                         R21 K71 [{"PrimaryAction"}]
      195 GETUPVAL                         R23 0
      196 GETTABLEKS                       R22 R23 K6 ["createElement"]
      198 GETUPVAL                         R23 3
      199 DUPTABLE                         R24 K74 [{"AutomaticSize", "Font", "RichText", "Text", "TextColor"}]
      200 GETIMPORT                        R25 K56 [Enum.AutomaticSize.XY]
      202 SETTABLEKS                       R25 R24 K8 ["AutomaticSize"]
      204 GETTABLEKS                       R25 R3 K75 ["PrimaryActionFont"]
      206 SETTABLEKS                       R25 R24 K72 ["Font"]
      208 LOADB                            R25 1
      209 SETTABLEKS                       R25 R24 K53 ["RichText"]
      211 LOADK                            R26 K76 ["<u>%*</u>"]
      212 LOADK                            R30 K77 ["Common"]
      213 LOADK                            R31 K78 ["LearnMore"]
      214 NAMECALL                         R28 R2 K79 ["getText"]
      216 CALL                             R28 3 1
      217 NAMECALL                         R26 R26 K58 ["format"]
      219 CALL                             R26 2 1
      220 MOVE                             R25 R26
      221 SETTABLEKS                       R25 R24 K51 ["Text"]
      223 GETTABLEKS                       R25 R3 K73 ["TextColor"]
      225 SETTABLEKS                       R25 R24 K73 ["TextColor"]
      227 CALL                             R22 2 1
      228 SETTABLEKS                       R22 R21 K70 ["PrimaryAction"]
      230 CALL                             R18 3 1
      231 SETTABLEKS                       R18 R17 K49 ["RightSide"]
      233 CALL                             R14 3 1
      234 SETTABLEKS                       R14 R13 K46 ["TopBar"]
      236 GETUPVAL                         R15 0
      237 GETTABLEKS                       R14 R15 K6 ["createElement"]
      239 GETUPVAL                         R15 3
      240 DUPTABLE                         R16 K81 [{"LayoutOrder", "AutomaticSize", "Text", "TextWrapped", "TextXAlignment", "RichText"}]
      241 LOADN                            R17 2
      242 SETTABLEKS                       R17 R16 K7 ["LayoutOrder"]
      244 GETIMPORT                        R17 K56 [Enum.AutomaticSize.XY]
      246 SETTABLEKS                       R17 R16 K8 ["AutomaticSize"]
      248 SETTABLEKS                       R5 R16 K51 ["Text"]
      250 LOADB                            R17 1
      251 SETTABLEKS                       R17 R16 K80 ["TextWrapped"]
      253 GETIMPORT                        R17 K59 [Enum.TextXAlignment.Left]
      255 SETTABLEKS                       R17 R16 K52 ["TextXAlignment"]
      257 LOADB                            R17 1
      258 SETTABLEKS                       R17 R16 K53 ["RichText"]
      260 CALL                             R14 2 1
      261 SETTABLEKS                       R14 R13 K5 ["Body"]
      263 CALL                             R10 3 1
      264 SETTABLEKS                       R10 R9 K25 ["Inner"]
      266 CALL                             R6 3 -1
      267 RETURN                           R6 -1

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
       25 GETTABLEKS                       R5 R2 K9 ["Style"]
       27 GETTABLEKS                       R4 R5 K10 ["Colors"]
       29 GETTABLEKS                       R5 R2 K11 ["UI"]
       31 GETTABLEKS                       R6 R5 K12 ["Pane"]
       33 GETTABLEKS                       R7 R5 K13 ["TextLabel"]
       35 GETTABLEKS                       R8 R1 K14 ["PureComponent"]
       37 LOADK                            R10 K15 ["CGEAlert"]
       38 NAMECALL                         R8 R8 K16 ["extend"]
       40 CALL                             R8 2 1
       41 DUPCLOSURE                       R9 K17 [PROTO_0]
       42 CAPTURE                          VAL R1
       43 CAPTURE                          VAL R6
       44 CAPTURE                          VAL R4
       45 CAPTURE                          VAL R7
       46 SETTABLEKS                       R9 R8 K18 ["render"]
       48 GETTABLEKS                       R9 R3 K19 ["withContext"]
       50 DUPTABLE                         R10 K22 [{"Stylizer", "Localization"}]
       51 GETTABLEKS                       R11 R3 K20 ["Stylizer"]
       53 SETTABLEKS                       R11 R10 K20 ["Stylizer"]
       55 GETTABLEKS                       R11 R3 K21 ["Localization"]
       57 SETTABLEKS                       R11 R10 K21 ["Localization"]
       59 CALL                             R9 1 1
       60 MOVE                             R10 R8
       61 CALL                             R9 1 1
       62 MOVE                             R8 R9
       63 RETURN                           R8 1
