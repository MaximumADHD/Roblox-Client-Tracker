PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Localization"]
        4 GETTABLEKS                       R3 R0 K0 ["props"]
        6 GETTABLEKS                       R3 R3 K2 ["Stylizer"]
        8 GETUPVAL                         R4 0
        9 GETTABLEKS                       R4 R4 K3 ["createElement"]
       11 GETUPVAL                         R5 1
       12 DUPTABLE                         R6 K10 [{"Title", "Enabled", "Modal", "Size", "Resizable", "OnClose"}]
       13 LOADK                            R9 K11 ["Moved"]
       14 LOADK                            R10 K4 ["Title"]
       15 NAMECALL                         R7 R2 K12 ["getText"]
       17 CALL                             R7 3 1
       18 SETTABLEKS                       R7 R6 K4 ["Title"]
       20 LOADB                            R7 1
       21 SETTABLEKS                       R7 R6 K5 ["Enabled"]
       23 LOADB                            R7 1
       24 SETTABLEKS                       R7 R6 K6 ["Modal"]
       26 GETIMPORT                        R7 K15 [Vector2.new]
       28 GETUPVAL                         R8 2
       29 GETTABLEKS                       R8 R8 K16 ["MOVED_DIALOG_WIDTH"]
       31 GETUPVAL                         R9 2
       32 GETTABLEKS                       R9 R9 K17 ["MOVED_DIALOG_HEIGHT"]
       34 CALL                             R7 2 1
       35 SETTABLEKS                       R7 R6 K7 ["Size"]
       37 LOADB                            R7 0
       38 SETTABLEKS                       R7 R6 K8 ["Resizable"]
       40 GETTABLEKS                       R7 R1 K9 ["OnClose"]
       42 SETTABLEKS                       R7 R6 K9 ["OnClose"]
       44 DUPTABLE                         R7 K19 [{"Background"}]
       45 GETUPVAL                         R8 0
       46 GETTABLEKS                       R8 R8 K3 ["createElement"]
       48 LOADK                            R9 K20 ["Frame"]
       49 DUPTABLE                         R10 K22 [{"Size", "BackgroundColor3"}]
       50 GETIMPORT                        R11 K24 [UDim2.new]
       52 LOADN                            R12 1
       53 LOADN                            R13 0
       54 LOADN                            R14 1
       55 LOADN                            R15 0
       56 CALL                             R11 4 1
       57 SETTABLEKS                       R11 R10 K7 ["Size"]
       59 GETTABLEKS                       R11 R3 K25 ["BackgroundColor"]
       61 SETTABLEKS                       R11 R10 K21 ["BackgroundColor3"]
       63 DUPTABLE                         R11 K29 [{"Label", "Label2", "CloseButton"}]
       64 GETUPVAL                         R12 0
       65 GETTABLEKS                       R12 R12 K3 ["createElement"]
       67 LOADK                            R13 K30 ["TextLabel"]
       68 DUPTABLE                         R14 K39 [{"Size", "Position", "AnchorPoint", "Text", "TextSize", "TextColor3", "TextXAlignment", "Font", "BackgroundTransparency"}]
       69 GETIMPORT                        R15 K24 [UDim2.new]
       71 LOADN                            R16 1
       72 LOADN                            R17 0
       73 LOADN                            R18 0
       74 GETUPVAL                         R19 2
       75 GETTABLEKS                       R19 R19 K40 ["MOVED_DIALOG_LABEL_HEIGHT"]
       77 CALL                             R15 4 1
       78 SETTABLEKS                       R15 R14 K7 ["Size"]
       80 GETIMPORT                        R15 K24 [UDim2.new]
       82 LOADN                            R16 0
       83 GETUPVAL                         R17 2
       84 GETTABLEKS                       R17 R17 K41 ["MOVED_DIALOG_SIDE_PADDING"]
       86 LOADN                            R18 0
       87 GETUPVAL                         R19 2
       88 GETTABLEKS                       R19 R19 K42 ["MOVED_DIALOG_TOP_PADDING"]
       90 CALL                             R15 4 1
       91 SETTABLEKS                       R15 R14 K31 ["Position"]
       93 GETIMPORT                        R15 K15 [Vector2.new]
       95 LOADN                            R16 0
       96 LOADN                            R17 0
       97 CALL                             R15 2 1
       98 SETTABLEKS                       R15 R14 K32 ["AnchorPoint"]
      100 LOADK                            R17 K11 ["Moved"]
      101 LOADK                            R18 K43 ["MovedMessage"]
      102 NAMECALL                         R15 R2 K12 ["getText"]
      104 CALL                             R15 3 1
      105 SETTABLEKS                       R15 R14 K33 ["Text"]
      107 LOADN                            R15 22
      108 SETTABLEKS                       R15 R14 K34 ["TextSize"]
      110 GETTABLEKS                       R15 R3 K44 ["TextColor"]
      112 SETTABLEKS                       R15 R14 K35 ["TextColor3"]
      114 GETIMPORT                        R15 K47 [Enum.TextXAlignment.Left]
      116 SETTABLEKS                       R15 R14 K36 ["TextXAlignment"]
      118 GETIMPORT                        R15 K49 [Enum.Font.SourceSans]
      120 SETTABLEKS                       R15 R14 K37 ["Font"]
      122 LOADN                            R15 1
      123 SETTABLEKS                       R15 R14 K38 ["BackgroundTransparency"]
      125 CALL                             R12 2 1
      126 SETTABLEKS                       R12 R11 K26 ["Label"]
      128 GETUPVAL                         R12 0
      129 GETTABLEKS                       R12 R12 K3 ["createElement"]
      131 LOADK                            R13 K30 ["TextLabel"]
      132 DUPTABLE                         R14 K39 [{"Size", "Position", "AnchorPoint", "Text", "TextSize", "TextColor3", "TextXAlignment", "Font", "BackgroundTransparency"}]
      133 GETIMPORT                        R15 K24 [UDim2.new]
      135 LOADN                            R16 1
      136 LOADN                            R17 0
      137 LOADN                            R18 0
      138 GETUPVAL                         R19 2
      139 GETTABLEKS                       R19 R19 K40 ["MOVED_DIALOG_LABEL_HEIGHT"]
      141 CALL                             R15 4 1
      142 SETTABLEKS                       R15 R14 K7 ["Size"]
      144 GETIMPORT                        R15 K24 [UDim2.new]
      146 LOADN                            R16 0
      147 GETUPVAL                         R17 2
      148 GETTABLEKS                       R17 R17 K41 ["MOVED_DIALOG_SIDE_PADDING"]
      150 LOADN                            R18 0
      151 GETUPVAL                         R21 2
      152 GETTABLEKS                       R21 R21 K42 ["MOVED_DIALOG_TOP_PADDING"]
      154 GETUPVAL                         R22 2
      155 GETTABLEKS                       R22 R22 K40 ["MOVED_DIALOG_LABEL_HEIGHT"]
      157 ADD                              R20 R21 R22
      158 GETUPVAL                         R21 2
      159 GETTABLEKS                       R21 R21 K50 ["MOVED_DIALOG_INTRA_PADDING"]
      161 ADD                              R19 R20 R21
      162 CALL                             R15 4 1
      163 SETTABLEKS                       R15 R14 K31 ["Position"]
      165 GETIMPORT                        R15 K15 [Vector2.new]
      167 LOADN                            R16 0
      168 LOADN                            R17 0
      169 CALL                             R15 2 1
      170 SETTABLEKS                       R15 R14 K32 ["AnchorPoint"]
      172 LOADK                            R17 K11 ["Moved"]
      173 LOADK                            R18 K51 ["NewLocationMessage"]
      174 NAMECALL                         R15 R2 K12 ["getText"]
      176 CALL                             R15 3 1
      177 SETTABLEKS                       R15 R14 K33 ["Text"]
      179 LOADN                            R15 17
      180 SETTABLEKS                       R15 R14 K34 ["TextSize"]
      182 GETTABLEKS                       R15 R3 K44 ["TextColor"]
      184 SETTABLEKS                       R15 R14 K35 ["TextColor3"]
      186 GETIMPORT                        R15 K47 [Enum.TextXAlignment.Left]
      188 SETTABLEKS                       R15 R14 K36 ["TextXAlignment"]
      190 GETIMPORT                        R15 K53 [Enum.Font.SourceSansLight]
      192 SETTABLEKS                       R15 R14 K37 ["Font"]
      194 LOADN                            R15 1
      195 SETTABLEKS                       R15 R14 K38 ["BackgroundTransparency"]
      197 CALL                             R12 2 1
      198 SETTABLEKS                       R12 R11 K27 ["Label2"]
      200 GETUPVAL                         R12 0
      201 GETTABLEKS                       R12 R12 K3 ["createElement"]
      203 GETUPVAL                         R13 3
      204 DUPTABLE                         R14 K56 [{"AnchorPoint", "Position", "Size", "OnClick", "Style"}]
      205 GETIMPORT                        R15 K15 [Vector2.new]
      207 LOADK                            R16 K57 [0.5]
      208 LOADN                            R17 1
      209 CALL                             R15 2 1
      210 SETTABLEKS                       R15 R14 K32 ["AnchorPoint"]
      212 GETIMPORT                        R15 K24 [UDim2.new]
      214 LOADK                            R16 K57 [0.5]
      215 LOADN                            R17 0
      216 LOADN                            R18 1
      217 GETUPVAL                         R20 2
      218 GETTABLEKS                       R20 R20 K58 ["MOVED_DIALOG_BOTTOM_PADDING"]
      220 MINUS                            R19 R20
      221 CALL                             R15 4 1
      222 SETTABLEKS                       R15 R14 K31 ["Position"]
      224 GETIMPORT                        R15 K24 [UDim2.new]
      226 LOADN                            R16 0
      227 GETUPVAL                         R17 2
      228 GETTABLEKS                       R17 R17 K59 ["MOVED_DIALOG_BUTTON_WIDTH"]
      230 LOADN                            R18 0
      231 GETUPVAL                         R19 2
      232 GETTABLEKS                       R19 R19 K60 ["MOVED_DIALOG_BUTTON_HEIGHT"]
      234 CALL                             R15 4 1
      235 SETTABLEKS                       R15 R14 K7 ["Size"]
      237 GETTABLEKS                       R15 R1 K9 ["OnClose"]
      239 SETTABLEKS                       R15 R14 K54 ["OnClick"]
      241 LOADK                            R15 K61 ["RoundPrimary"]
      242 SETTABLEKS                       R15 R14 K55 ["Style"]
      244 DUPTABLE                         R15 K62 [{"Label"}]
      245 GETUPVAL                         R16 0
      246 GETTABLEKS                       R16 R16 K3 ["createElement"]
      248 LOADK                            R17 K30 ["TextLabel"]
      249 DUPTABLE                         R18 K63 [{"Size", "Text", "TextColor3", "Font", "TextSize", "BackgroundTransparency"}]
      250 GETIMPORT                        R19 K24 [UDim2.new]
      252 LOADN                            R20 1
      253 LOADN                            R21 0
      254 LOADN                            R22 1
      255 LOADN                            R23 0
      256 CALL                             R19 4 1
      257 SETTABLEKS                       R19 R18 K7 ["Size"]
      259 LOADK                            R21 K11 ["Moved"]
      260 LOADK                            R22 K64 ["GotIt"]
      261 NAMECALL                         R19 R2 K12 ["getText"]
      263 CALL                             R19 3 1
      264 SETTABLEKS                       R19 R18 K33 ["Text"]
      266 GETTABLEKS                       R19 R3 K65 ["White"]
      268 SETTABLEKS                       R19 R18 K35 ["TextColor3"]
      270 GETIMPORT                        R19 K49 [Enum.Font.SourceSans]
      272 SETTABLEKS                       R19 R18 K37 ["Font"]
      274 LOADN                            R19 19
      275 SETTABLEKS                       R19 R18 K34 ["TextSize"]
      277 LOADN                            R19 1
      278 SETTABLEKS                       R19 R18 K38 ["BackgroundTransparency"]
      280 CALL                             R16 2 1
      281 SETTABLEKS                       R16 R15 K26 ["Label"]
      283 CALL                             R12 3 1
      284 SETTABLEKS                       R12 R11 K28 ["CloseButton"]
      286 CALL                             R8 3 1
      287 SETTABLEKS                       R8 R7 K18 ["Background"]
      289 CALL                             R4 3 -1
      290 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R2 K6 ["Roact"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R3 R0 K7 ["Src"]
       20 GETTABLEKS                       R3 R3 K8 ["Util"]
       22 GETTABLEKS                       R3 R3 K9 ["Constants"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K4 [require]
       27 GETTABLEKS                       R4 R0 K5 ["Packages"]
       29 GETTABLEKS                       R4 R4 K10 ["Framework"]
       31 CALL                             R3 1 1
       32 GETTABLEKS                       R4 R3 K11 ["ContextServices"]
       34 GETTABLEKS                       R5 R4 K12 ["withContext"]
       36 GETTABLEKS                       R6 R3 K13 ["UI"]
       38 GETTABLEKS                       R7 R6 K14 ["Button"]
       40 GETTABLEKS                       R8 R6 K15 ["Dialog"]
       42 GETTABLEKS                       R9 R1 K16 ["PureComponent"]
       44 LOADK                            R11 K17 ["MovedDialog"]
       45 NAMECALL                         R9 R9 K18 ["extend"]
       47 CALL                             R9 2 1
       48 DUPCLOSURE                       R10 K19 [PROTO_0]
       49 CAPTURE                          VAL R1
       50 CAPTURE                          VAL R8
       51 CAPTURE                          VAL R2
       52 CAPTURE                          VAL R7
       53 SETTABLEKS                       R10 R9 K20 ["render"]
       55 MOVE                             R10 R5
       56 DUPTABLE                         R11 K23 [{"Localization", "Stylizer"}]
       57 GETTABLEKS                       R12 R4 K21 ["Localization"]
       59 SETTABLEKS                       R12 R11 K21 ["Localization"]
       61 GETTABLEKS                       R12 R4 K22 ["Stylizer"]
       63 SETTABLEKS                       R12 R11 K22 ["Stylizer"]
       65 CALL                             R10 1 1
       66 MOVE                             R11 R9
       67 CALL                             R10 1 1
       68 MOVE                             R9 R10
       69 RETURN                           R9 1
