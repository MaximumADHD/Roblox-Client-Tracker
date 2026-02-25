PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["close"]
        3 CALL                             R0 0 0
        4 RETURN                           R0 0

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Localization"]
        4 GETUPVAL                         R4 0
        5 GETTABLEKS                       R3 R4 K2 ["createElement"]
        7 LOADK                            R4 K3 ["Frame"]
        8 DUPTABLE                         R5 K6 [{"BackgroundColor3", "Size"}]
        9 GETTABLEKS                       R7 R1 K7 ["Stylizer"]
       11 GETUPVAL                         R9 1
       12 GETTABLEKS                       R8 R9 K8 ["MainBackground"]
       14 GETTABLE                         R6 R7 R8
       15 SETTABLEKS                       R6 R5 K4 ["BackgroundColor3"]
       17 GETIMPORT                        R6 K11 [UDim2.new]
       19 LOADN                            R7 1
       20 LOADN                            R8 0
       21 LOADN                            R9 1
       22 LOADN                            R10 0
       23 CALL                             R6 4 1
       24 SETTABLEKS                       R6 R5 K5 ["Size"]
       26 DUPTABLE                         R6 K15 [{"UIPadding", "Content", "Button"}]
       27 GETUPVAL                         R8 0
       28 GETTABLEKS                       R7 R8 K2 ["createElement"]
       30 LOADK                            R8 K12 ["UIPadding"]
       31 DUPTABLE                         R9 K20 [{"PaddingBottom", "PaddingLeft", "PaddingRight", "PaddingTop"}]
       32 GETIMPORT                        R10 K22 [UDim.new]
       34 LOADN                            R11 0
       35 GETUPVAL                         R13 2
       36 GETTABLEKS                       R12 R13 K23 ["Padding"]
       38 CALL                             R10 2 1
       39 SETTABLEKS                       R10 R9 K16 ["PaddingBottom"]
       41 GETIMPORT                        R10 K22 [UDim.new]
       43 LOADN                            R11 0
       44 GETUPVAL                         R13 2
       45 GETTABLEKS                       R12 R13 K23 ["Padding"]
       47 CALL                             R10 2 1
       48 SETTABLEKS                       R10 R9 K17 ["PaddingLeft"]
       50 GETIMPORT                        R10 K22 [UDim.new]
       52 LOADN                            R11 0
       53 GETUPVAL                         R13 2
       54 GETTABLEKS                       R12 R13 K23 ["Padding"]
       56 CALL                             R10 2 1
       57 SETTABLEKS                       R10 R9 K18 ["PaddingRight"]
       59 GETIMPORT                        R10 K22 [UDim.new]
       61 LOADN                            R11 0
       62 GETUPVAL                         R13 2
       63 GETTABLEKS                       R12 R13 K23 ["Padding"]
       65 CALL                             R10 2 1
       66 SETTABLEKS                       R10 R9 K19 ["PaddingTop"]
       68 CALL                             R7 2 1
       69 SETTABLEKS                       R7 R6 K12 ["UIPadding"]
       71 GETUPVAL                         R8 0
       72 GETTABLEKS                       R7 R8 K2 ["createElement"]
       74 LOADK                            R8 K3 ["Frame"]
       75 DUPTABLE                         R9 K25 [{"BackgroundTransparency", "Size"}]
       76 LOADN                            R10 1
       77 SETTABLEKS                       R10 R9 K24 ["BackgroundTransparency"]
       79 GETIMPORT                        R10 K11 [UDim2.new]
       81 LOADN                            R11 1
       82 LOADN                            R12 0
       83 LOADN                            R13 1
       84 LOADN                            R16 30
       85 GETUPVAL                         R18 2
       86 GETTABLEKS                       R17 R18 K23 ["Padding"]
       88 ADD                              R15 R16 R17
       89 MINUS                            R14 R15
       90 CALL                             R10 4 1
       91 SETTABLEKS                       R10 R9 K5 ["Size"]
       93 DUPTABLE                         R10 K29 [{"UIListLayout", "TextLabel", "MultiLineTextInput"}]
       94 GETUPVAL                         R12 0
       95 GETTABLEKS                       R11 R12 K2 ["createElement"]
       97 LOADK                            R12 K26 ["UIListLayout"]
       98 DUPTABLE                         R13 K32 [{"SortOrder", "VerticalAlignment", "Padding"}]
       99 GETIMPORT                        R14 K35 [Enum.SortOrder.LayoutOrder]
      101 SETTABLEKS                       R14 R13 K30 ["SortOrder"]
      103 GETIMPORT                        R14 K37 [Enum.VerticalAlignment.Top]
      105 SETTABLEKS                       R14 R13 K31 ["VerticalAlignment"]
      107 GETIMPORT                        R14 K22 [UDim.new]
      109 LOADN                            R15 0
      110 GETUPVAL                         R17 2
      111 GETTABLEKS                       R16 R17 K23 ["Padding"]
      113 CALL                             R14 2 1
      114 SETTABLEKS                       R14 R13 K23 ["Padding"]
      116 CALL                             R11 2 1
      117 SETTABLEKS                       R11 R10 K26 ["UIListLayout"]
      119 GETUPVAL                         R12 0
      120 GETTABLEKS                       R11 R12 K2 ["createElement"]
      122 GETUPVAL                         R12 3
      123 DUPTABLE                         R13 K42 [{"LayoutOrder", "Text", "Style", "Size", "Position", "BackgroundTransparency", "TextXAlignment"}]
      124 LOADN                            R14 1
      125 SETTABLEKS                       R14 R13 K34 ["LayoutOrder"]
      127 LOADK                            R16 K43 ["Plugin"]
      128 LOADK                            R17 K44 ["ErrorTitle"]
      129 NAMECALL                         R14 R2 K45 ["getText"]
      131 CALL                             R14 3 1
      132 SETTABLEKS                       R14 R13 K38 ["Text"]
      134 LOADK                            R14 K46 ["Title"]
      135 SETTABLEKS                       R14 R13 K39 ["Style"]
      137 GETIMPORT                        R14 K11 [UDim2.new]
      139 LOADN                            R15 1
      140 LOADN                            R16 0
      141 LOADN                            R17 0
      142 LOADN                            R18 20
      143 CALL                             R14 4 1
      144 SETTABLEKS                       R14 R13 K5 ["Size"]
      146 GETIMPORT                        R14 K11 [UDim2.new]
      148 LOADN                            R15 0
      149 LOADN                            R16 0
      150 LOADN                            R17 0
      151 LOADN                            R18 0
      152 CALL                             R14 4 1
      153 SETTABLEKS                       R14 R13 K40 ["Position"]
      155 LOADN                            R14 1
      156 SETTABLEKS                       R14 R13 K24 ["BackgroundTransparency"]
      158 GETIMPORT                        R14 K48 [Enum.TextXAlignment.Center]
      160 SETTABLEKS                       R14 R13 K41 ["TextXAlignment"]
      162 CALL                             R11 2 1
      163 SETTABLEKS                       R11 R10 K27 ["TextLabel"]
      165 GETUPVAL                         R12 0
      166 GETTABLEKS                       R11 R12 K2 ["createElement"]
      168 GETUPVAL                         R12 4
      169 DUPTABLE                         R13 K50 [{"LayoutOrder", "TextInputProps", "Style", "Size", "Position"}]
      170 LOADN                            R14 2
      171 SETTABLEKS                       R14 R13 K34 ["LayoutOrder"]
      173 DUPTABLE                         R14 K52 [{"Text", "Enabled"}]
      174 GETTABLEKS                       R16 R0 K0 ["props"]
      176 GETTABLEKS                       R15 R16 K53 ["errorText"]
      178 SETTABLEKS                       R15 R14 K38 ["Text"]
      180 LOADB                            R15 0
      181 SETTABLEKS                       R15 R14 K51 ["Enabled"]
      183 SETTABLEKS                       R14 R13 K49 ["TextInputProps"]
      185 LOADK                            R14 K54 ["FilledRoundedRedBorder"]
      186 SETTABLEKS                       R14 R13 K39 ["Style"]
      188 GETIMPORT                        R14 K11 [UDim2.new]
      190 LOADN                            R15 1
      191 LOADN                            R16 0
      192 LOADN                            R17 1
      193 LOADN                            R20 20
      194 GETUPVAL                         R22 2
      195 GETTABLEKS                       R21 R22 K23 ["Padding"]
      197 ADD                              R19 R20 R21
      198 MINUS                            R18 R19
      199 CALL                             R14 4 1
      200 SETTABLEKS                       R14 R13 K5 ["Size"]
      202 GETIMPORT                        R14 K11 [UDim2.new]
      204 LOADN                            R15 0
      205 LOADN                            R16 0
      206 LOADN                            R17 0
      207 LOADN                            R18 0
      208 CALL                             R14 4 1
      209 SETTABLEKS                       R14 R13 K40 ["Position"]
      211 CALL                             R11 2 1
      212 SETTABLEKS                       R11 R10 K28 ["MultiLineTextInput"]
      214 CALL                             R7 3 1
      215 SETTABLEKS                       R7 R6 K13 ["Content"]
      217 GETUPVAL                         R8 0
      218 GETTABLEKS                       R7 R8 K2 ["createElement"]
      220 GETUPVAL                         R8 5
      221 DUPTABLE                         R9 K57 [{"Text", "Style", "TextSize", "Size", "Position", "OnClick"}]
      222 LOADK                            R12 K43 ["Plugin"]
      223 LOADK                            R13 K58 ["CloseButton"]
      224 NAMECALL                         R10 R2 K45 ["getText"]
      226 CALL                             R10 3 1
      227 SETTABLEKS                       R10 R9 K38 ["Text"]
      229 LOADK                            R10 K59 ["Round"]
      230 SETTABLEKS                       R10 R9 K39 ["Style"]
      232 LOADN                            R10 24
      233 SETTABLEKS                       R10 R9 K55 ["TextSize"]
      235 GETIMPORT                        R10 K11 [UDim2.new]
      237 LOADN                            R11 1
      238 LOADN                            R12 0
      239 LOADN                            R13 0
      240 LOADN                            R14 30
      241 CALL                             R10 4 1
      242 SETTABLEKS                       R10 R9 K5 ["Size"]
      244 GETIMPORT                        R10 K11 [UDim2.new]
      246 LOADN                            R11 0
      247 LOADN                            R12 0
      248 LOADN                            R13 1
      249 LOADN                            R14 226
      250 CALL                             R10 4 1
      251 SETTABLEKS                       R10 R9 K40 ["Position"]
      253 NEWCLOSURE                       R10 P0
      254 CAPTURE                          VAL R1
      255 SETTABLEKS                       R10 R9 K56 ["OnClick"]
      257 CALL                             R7 2 1
      258 SETTABLEKS                       R7 R6 K14 ["Button"]
      260 CALL                             R3 3 -1
      261 RETURN                           R3 -1

PROTO_2:
        0 DUPTABLE                         R2 K1 [{"errorText"}]
        1 GETTABLEKS                       R4 R0 K2 ["PluginReducer"]
        3 GETTABLEKS                       R3 R4 K0 ["errorText"]
        5 SETTABLEKS                       R3 R2 K0 ["errorText"]
        7 RETURN                           R2 1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 LOADB                            R2 0
        3 CALL                             R1 1 -1
        4 CALL                             R0 -1 0
        5 RETURN                           R0 0

PROTO_4:
        0 DUPTABLE                         R1 K1 [{"close"}]
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U0
        4 SETTABLEKS                       R2 R1 K0 ["close"]
        6 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["DynamicHeadExportTool"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R4 K8 ["RoactRodux"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R5 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R5 K9 ["Framework"]
       27 CALL                             R3 1 1
       28 GETTABLEKS                       R4 R3 K10 ["ContextServices"]
       30 GETTABLEKS                       R5 R3 K11 ["UI"]
       32 GETTABLEKS                       R6 R5 K12 ["Button"]
       34 GETTABLEKS                       R7 R5 K13 ["MultiLineTextInput"]
       36 GETTABLEKS                       R8 R5 K14 ["TextLabel"]
       38 GETTABLEKS                       R10 R3 K15 ["Style"]
       40 GETTABLEKS                       R9 R10 K16 ["StyleKey"]
       42 GETIMPORT                        R10 K5 [require]
       44 GETTABLEKS                       R13 R0 K17 ["Src"]
       46 GETTABLEKS                       R12 R13 K18 ["Actions"]
       48 GETTABLEKS                       R11 R12 K19 ["SetEnabled"]
       50 CALL                             R10 1 1
       51 GETIMPORT                        R11 K5 [require]
       53 GETTABLEKS                       R13 R0 K17 ["Src"]
       55 GETTABLEKS                       R12 R13 K20 ["Constants"]
       57 CALL                             R11 1 1
       58 GETTABLEKS                       R12 R1 K21 ["PureComponent"]
       60 LOADK                            R14 K22 ["ErrorScreen"]
       61 NAMECALL                         R12 R12 K23 ["extend"]
       63 CALL                             R12 2 1
       64 DUPCLOSURE                       R13 K24 [PROTO_1]
       65 CAPTURE                          VAL R1
       66 CAPTURE                          VAL R9
       67 CAPTURE                          VAL R11
       68 CAPTURE                          VAL R8
       69 CAPTURE                          VAL R7
       70 CAPTURE                          VAL R6
       71 SETTABLEKS                       R13 R12 K25 ["render"]
       73 GETTABLEKS                       R13 R4 K26 ["withContext"]
       75 DUPTABLE                         R14 K30 [{"Localization", "Stylizer", "Plugin"}]
       76 GETTABLEKS                       R15 R4 K27 ["Localization"]
       78 SETTABLEKS                       R15 R14 K27 ["Localization"]
       80 GETTABLEKS                       R15 R4 K28 ["Stylizer"]
       82 SETTABLEKS                       R15 R14 K28 ["Stylizer"]
       84 GETTABLEKS                       R15 R4 K29 ["Plugin"]
       86 SETTABLEKS                       R15 R14 K29 ["Plugin"]
       88 CALL                             R13 1 1
       89 MOVE                             R14 R12
       90 CALL                             R13 1 1
       91 MOVE                             R12 R13
       92 DUPCLOSURE                       R13 K31 [PROTO_2]
       93 DUPCLOSURE                       R14 K32 [PROTO_4]
       94 CAPTURE                          VAL R10
       95 GETTABLEKS                       R15 R2 K33 ["connect"]
       97 MOVE                             R16 R13
       98 MOVE                             R17 R14
       99 CALL                             R15 2 1
      100 MOVE                             R16 R12
      101 CALL                             R15 1 -1
      102 RETURN                           R15 -1
