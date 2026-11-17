PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["close"]
        3 CALL                             R0 0 0
        4 RETURN                           R0 0

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Localization"]
        4 GETUPVAL                         R3 0
        5 GETTABLEKS                       R3 R3 K2 ["createElement"]
        7 LOADK                            R4 K3 ["Frame"]
        8 DUPTABLE                         R5 K6 [{"BackgroundColor3", "Size"}]
        9 GETTABLEKS                       R7 R1 K7 ["Stylizer"]
       11 GETUPVAL                         R8 1
       12 GETTABLEKS                       R8 R8 K8 ["MainBackground"]
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
       27 GETUPVAL                         R7 0
       28 GETTABLEKS                       R7 R7 K2 ["createElement"]
       30 LOADK                            R8 K12 ["UIPadding"]
       31 DUPTABLE                         R9 K20 [{"PaddingBottom", "PaddingLeft", "PaddingRight", "PaddingTop"}]
       32 GETIMPORT                        R10 K22 [UDim.new]
       34 LOADN                            R11 0
       35 GETUPVAL                         R12 2
       36 GETTABLEKS                       R12 R12 K23 ["Padding"]
       38 CALL                             R10 2 1
       39 SETTABLEKS                       R10 R9 K16 ["PaddingBottom"]
       41 GETIMPORT                        R10 K22 [UDim.new]
       43 LOADN                            R11 0
       44 GETUPVAL                         R12 2
       45 GETTABLEKS                       R12 R12 K23 ["Padding"]
       47 CALL                             R10 2 1
       48 SETTABLEKS                       R10 R9 K17 ["PaddingLeft"]
       50 GETIMPORT                        R10 K22 [UDim.new]
       52 LOADN                            R11 0
       53 GETUPVAL                         R12 2
       54 GETTABLEKS                       R12 R12 K23 ["Padding"]
       56 CALL                             R10 2 1
       57 SETTABLEKS                       R10 R9 K18 ["PaddingRight"]
       59 GETIMPORT                        R10 K22 [UDim.new]
       61 LOADN                            R11 0
       62 GETUPVAL                         R12 2
       63 GETTABLEKS                       R12 R12 K23 ["Padding"]
       65 CALL                             R10 2 1
       66 SETTABLEKS                       R10 R9 K19 ["PaddingTop"]
       68 CALL                             R7 2 1
       69 SETTABLEKS                       R7 R6 K12 ["UIPadding"]
       71 GETUPVAL                         R7 0
       72 GETTABLEKS                       R7 R7 K2 ["createElement"]
       74 LOADK                            R8 K3 ["Frame"]
       75 DUPTABLE                         R9 K26 [{["BackgroundTransparency"] = 1, ["Size"]}]
       76 GETIMPORT                        R10 K11 [UDim2.new]
       78 LOADN                            R11 1
       79 LOADN                            R12 0
       80 LOADN                            R13 1
       81 LOADN                            R16 30
       82 GETUPVAL                         R17 2
       83 GETTABLEKS                       R17 R17 K23 ["Padding"]
       85 ADD                              R15 R16 R17
       86 MINUS                            R14 R15
       87 CALL                             R10 4 1
       88 SETTABLEKS                       R10 R9 K5 ["Size"]
       90 DUPTABLE                         R10 K30 [{"UIListLayout", "TextLabel", "MultiLineTextInput"}]
       91 GETUPVAL                         R11 0
       92 GETTABLEKS                       R11 R11 K2 ["createElement"]
       94 LOADK                            R12 K27 ["UIListLayout"]
       95 DUPTABLE                         R13 K33 [{"SortOrder", "VerticalAlignment", "Padding"}]
       96 GETIMPORT                        R14 K36 [Enum.SortOrder.LayoutOrder]
       98 SETTABLEKS                       R14 R13 K31 ["SortOrder"]
      100 GETIMPORT                        R14 K38 [Enum.VerticalAlignment.Top]
      102 SETTABLEKS                       R14 R13 K32 ["VerticalAlignment"]
      104 GETIMPORT                        R14 K22 [UDim.new]
      106 LOADN                            R15 0
      107 GETUPVAL                         R16 2
      108 GETTABLEKS                       R16 R16 K23 ["Padding"]
      110 CALL                             R14 2 1
      111 SETTABLEKS                       R14 R13 K23 ["Padding"]
      113 CALL                             R11 2 1
      114 SETTABLEKS                       R11 R10 K27 ["UIListLayout"]
      116 GETUPVAL                         R11 0
      117 GETTABLEKS                       R11 R11 K2 ["createElement"]
      119 GETUPVAL                         R12 3
      120 DUPTABLE                         R13 K44 [{["LayoutOrder"] = 1, ["Text"], ["Style"] = "Title", ["Size"], ["Position"], ["BackgroundTransparency"] = 1, ["TextXAlignment"]}]
      121 LOADK                            R16 K45 ["Plugin"]
      122 LOADK                            R17 K46 ["ErrorTitle"]
      123 NAMECALL                         R14 R2 K47 ["getText"]
      125 CALL                             R14 3 1
      126 SETTABLEKS                       R14 R13 K39 ["Text"]
      128 GETIMPORT                        R14 K11 [UDim2.new]
      130 LOADN                            R15 1
      131 LOADN                            R16 0
      132 LOADN                            R17 0
      133 LOADN                            R18 20
      134 CALL                             R14 4 1
      135 SETTABLEKS                       R14 R13 K5 ["Size"]
      137 GETIMPORT                        R14 K11 [UDim2.new]
      139 LOADN                            R15 0
      140 LOADN                            R16 0
      141 LOADN                            R17 0
      142 LOADN                            R18 0
      143 CALL                             R14 4 1
      144 SETTABLEKS                       R14 R13 K42 ["Position"]
      146 GETIMPORT                        R14 K49 [Enum.TextXAlignment.Center]
      148 SETTABLEKS                       R14 R13 K43 ["TextXAlignment"]
      150 CALL                             R11 2 1
      151 SETTABLEKS                       R11 R10 K28 ["TextLabel"]
      153 GETUPVAL                         R11 0
      154 GETTABLEKS                       R11 R11 K2 ["createElement"]
      156 GETUPVAL                         R12 4
      157 DUPTABLE                         R13 K53 [{["LayoutOrder"] = 2, ["TextInputProps"], ["Style"] = "FilledRoundedRedBorder", ["Size"], ["Position"]}]
      158 DUPTABLE                         R14 K56 [{["Text"], ["Enabled"] = False}]
      159 GETTABLEKS                       R15 R0 K0 ["props"]
      161 GETTABLEKS                       R15 R15 K57 ["errorText"]
      163 SETTABLEKS                       R15 R14 K39 ["Text"]
      165 SETTABLEKS                       R14 R13 K51 ["TextInputProps"]
      167 GETIMPORT                        R14 K11 [UDim2.new]
      169 LOADN                            R15 1
      170 LOADN                            R16 0
      171 LOADN                            R17 1
      172 LOADN                            R20 20
      173 GETUPVAL                         R21 2
      174 GETTABLEKS                       R21 R21 K23 ["Padding"]
      176 ADD                              R19 R20 R21
      177 MINUS                            R18 R19
      178 CALL                             R14 4 1
      179 SETTABLEKS                       R14 R13 K5 ["Size"]
      181 GETIMPORT                        R14 K11 [UDim2.new]
      183 LOADN                            R15 0
      184 LOADN                            R16 0
      185 LOADN                            R17 0
      186 LOADN                            R18 0
      187 CALL                             R14 4 1
      188 SETTABLEKS                       R14 R13 K42 ["Position"]
      190 CALL                             R11 2 1
      191 SETTABLEKS                       R11 R10 K29 ["MultiLineTextInput"]
      193 CALL                             R7 3 1
      194 SETTABLEKS                       R7 R6 K13 ["Content"]
      196 GETUPVAL                         R7 0
      197 GETTABLEKS                       R7 R7 K2 ["createElement"]
      199 GETUPVAL                         R8 5
      200 DUPTABLE                         R9 K62 [{["Text"], ["Style"] = "Round", ["TextSize"] = 24, ["Size"], ["Position"], ["OnClick"]}]
      201 LOADK                            R12 K45 ["Plugin"]
      202 LOADK                            R13 K63 ["CloseButton"]
      203 NAMECALL                         R10 R2 K47 ["getText"]
      205 CALL                             R10 3 1
      206 SETTABLEKS                       R10 R9 K39 ["Text"]
      208 GETIMPORT                        R10 K11 [UDim2.new]
      210 LOADN                            R11 1
      211 LOADN                            R12 0
      212 LOADN                            R13 0
      213 LOADN                            R14 30
      214 CALL                             R10 4 1
      215 SETTABLEKS                       R10 R9 K5 ["Size"]
      217 GETIMPORT                        R10 K11 [UDim2.new]
      219 LOADN                            R11 0
      220 LOADN                            R12 0
      221 LOADN                            R13 1
      222 LOADN                            R14 -30
      223 CALL                             R10 4 1
      224 SETTABLEKS                       R10 R9 K42 ["Position"]
      226 NEWCLOSURE                       R10 P0
      227 CAPTURE                          VAL R1
      228 SETTABLEKS                       R10 R9 K61 ["OnClick"]
      230 CALL                             R7 2 1
      231 SETTABLEKS                       R7 R6 K14 ["Button"]
      233 CALL                             R3 3 -1
      234 RETURN                           R3 -1

PROTO_2:
        0 DUPTABLE                         R2 K1 [{"errorText"}]
        1 GETTABLEKS                       R3 R0 K2 ["PluginReducer"]
        3 GETTABLEKS                       R3 R3 K0 ["errorText"]
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
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["RoactRodux"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R4 K9 ["Framework"]
       27 CALL                             R3 1 1
       28 GETTABLEKS                       R4 R3 K10 ["ContextServices"]
       30 GETTABLEKS                       R5 R3 K11 ["UI"]
       32 GETTABLEKS                       R6 R5 K12 ["Button"]
       34 GETTABLEKS                       R7 R5 K13 ["MultiLineTextInput"]
       36 GETTABLEKS                       R8 R5 K14 ["TextLabel"]
       38 GETTABLEKS                       R9 R3 K15 ["Style"]
       40 GETTABLEKS                       R9 R9 K16 ["StyleKey"]
       42 GETIMPORT                        R10 K5 [require]
       44 GETTABLEKS                       R11 R0 K17 ["Src"]
       46 GETTABLEKS                       R11 R11 K18 ["Actions"]
       48 GETTABLEKS                       R11 R11 K19 ["SetEnabled"]
       50 CALL                             R10 1 1
       51 GETIMPORT                        R11 K5 [require]
       53 GETTABLEKS                       R12 R0 K17 ["Src"]
       55 GETTABLEKS                       R12 R12 K20 ["Constants"]
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
