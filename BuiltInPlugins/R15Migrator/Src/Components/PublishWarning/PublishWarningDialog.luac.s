PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["OnCancel"]
        4 GETTABLEKS                       R3 R1 K2 ["OnContinue"]
        6 GETTABLEKS                       R4 R1 K3 ["Localization"]
        8 GETTABLEKS                       R5 R1 K4 ["Stylizer"]
       10 GETUPVAL                         R6 0
       11 GETTABLEKS                       R6 R6 K5 ["new"]
       13 CALL                             R6 0 1
       14 GETUPVAL                         R7 1
       15 GETTABLEKS                       R7 R7 K6 ["createElement"]
       17 GETUPVAL                         R8 2
       18 DUPTABLE                         R9 K12 [{"Layout", "HorizontalAlignment", "VerticalAlignment", "Spacing", "Padding"}]
       19 GETIMPORT                        R10 K16 [Enum.FillDirection.Horizontal]
       21 SETTABLEKS                       R10 R9 K7 ["Layout"]
       23 GETIMPORT                        R10 K18 [Enum.HorizontalAlignment.Right]
       25 SETTABLEKS                       R10 R9 K8 ["HorizontalAlignment"]
       27 GETIMPORT                        R10 K20 [Enum.VerticalAlignment.Top]
       29 SETTABLEKS                       R10 R9 K9 ["VerticalAlignment"]
       31 GETTABLEKS                       R10 R5 K10 ["Spacing"]
       33 SETTABLEKS                       R10 R9 K10 ["Spacing"]
       35 GETTABLEKS                       R10 R5 K11 ["Padding"]
       37 SETTABLEKS                       R10 R9 K11 ["Padding"]
       39 DUPTABLE                         R10 K23 [{"Icon", "Text"}]
       40 GETUPVAL                         R11 1
       41 GETTABLEKS                       R11 R11 K6 ["createElement"]
       43 GETUPVAL                         R12 3
       44 DUPTABLE                         R13 K27 [{"Size", "Image", "LayoutOrder"}]
       45 GETIMPORT                        R14 K30 [UDim2.fromOffset]
       47 GETTABLEKS                       R15 R5 K31 ["ImageSize"]
       49 GETTABLEKS                       R16 R5 K31 ["ImageSize"]
       51 CALL                             R14 2 1
       52 SETTABLEKS                       R14 R13 K24 ["Size"]
       54 GETTABLEKS                       R14 R5 K32 ["WarningIcon"]
       56 SETTABLEKS                       R14 R13 K25 ["Image"]
       58 NAMECALL                         R14 R6 K33 ["getNextOrder"]
       60 CALL                             R14 1 1
       61 SETTABLEKS                       R14 R13 K26 ["LayoutOrder"]
       63 CALL                             R11 2 1
       64 SETTABLEKS                       R11 R10 K21 ["Icon"]
       66 GETUPVAL                         R11 1
       67 GETTABLEKS                       R11 R11 K6 ["createElement"]
       69 GETUPVAL                         R12 2
       70 DUPTABLE                         R13 K34 [{"Layout", "HorizontalAlignment", "VerticalAlignment", "Size", "LayoutOrder", "Spacing"}]
       71 GETIMPORT                        R14 K36 [Enum.FillDirection.Vertical]
       73 SETTABLEKS                       R14 R13 K7 ["Layout"]
       75 GETIMPORT                        R14 K18 [Enum.HorizontalAlignment.Right]
       77 SETTABLEKS                       R14 R13 K8 ["HorizontalAlignment"]
       79 GETIMPORT                        R14 K38 [Enum.VerticalAlignment.Bottom]
       81 SETTABLEKS                       R14 R13 K9 ["VerticalAlignment"]
       83 GETTABLEKS                       R14 R5 K39 ["TextSize"]
       85 SETTABLEKS                       R14 R13 K24 ["Size"]
       87 NAMECALL                         R14 R6 K33 ["getNextOrder"]
       89 CALL                             R14 1 1
       90 SETTABLEKS                       R14 R13 K26 ["LayoutOrder"]
       92 GETTABLEKS                       R14 R5 K40 ["TextSpacing"]
       94 SETTABLEKS                       R14 R13 K10 ["Spacing"]
       96 DUPTABLE                         R14 K44 [{"Warning", "Detail", "Buttons"}]
       97 GETUPVAL                         R15 1
       98 GETTABLEKS                       R15 R15 K6 ["createElement"]
      100 GETUPVAL                         R16 4
      101 DUPTABLE                         R17 K48 [{"Text", "AutomaticSize", "TextXAlignment", "Size", "Style"}]
      102 LOADK                            R20 K49 ["PublishWarning"]
      103 LOADK                            R21 K41 ["Warning"]
      104 NAMECALL                         R18 R4 K50 ["getText"]
      106 CALL                             R18 3 1
      107 SETTABLEKS                       R18 R17 K22 ["Text"]
      109 GETIMPORT                        R18 K52 [Enum.AutomaticSize.Y]
      111 SETTABLEKS                       R18 R17 K45 ["AutomaticSize"]
      113 GETIMPORT                        R18 K54 [Enum.TextXAlignment.Left]
      115 SETTABLEKS                       R18 R17 K46 ["TextXAlignment"]
      117 GETIMPORT                        R18 K55 [UDim2.new]
      119 LOADN                            R19 1
      120 LOADN                            R20 0
      121 LOADN                            R21 0
      122 LOADN                            R22 0
      123 CALL                             R18 4 1
      124 SETTABLEKS                       R18 R17 K24 ["Size"]
      126 LOADK                            R18 K56 ["Semibold"]
      127 SETTABLEKS                       R18 R17 K47 ["Style"]
      129 CALL                             R15 2 1
      130 SETTABLEKS                       R15 R14 K41 ["Warning"]
      132 GETUPVAL                         R15 1
      133 GETTABLEKS                       R15 R15 K6 ["createElement"]
      135 GETUPVAL                         R16 4
      136 DUPTABLE                         R17 K58 [{"Text", "AutomaticSize", "Size", "TextXAlignment", "TextWrapped", "LayoutOrder", "Style"}]
      137 LOADK                            R20 K49 ["PublishWarning"]
      138 LOADK                            R21 K42 ["Detail"]
      139 NAMECALL                         R18 R4 K50 ["getText"]
      141 CALL                             R18 3 1
      142 SETTABLEKS                       R18 R17 K22 ["Text"]
      144 GETIMPORT                        R18 K52 [Enum.AutomaticSize.Y]
      146 SETTABLEKS                       R18 R17 K45 ["AutomaticSize"]
      148 GETIMPORT                        R18 K55 [UDim2.new]
      150 LOADN                            R19 1
      151 LOADN                            R20 0
      152 LOADN                            R21 0
      153 LOADN                            R22 0
      154 CALL                             R18 4 1
      155 SETTABLEKS                       R18 R17 K24 ["Size"]
      157 GETIMPORT                        R18 K54 [Enum.TextXAlignment.Left]
      159 SETTABLEKS                       R18 R17 K46 ["TextXAlignment"]
      161 LOADB                            R18 1
      162 SETTABLEKS                       R18 R17 K57 ["TextWrapped"]
      164 NAMECALL                         R18 R6 K33 ["getNextOrder"]
      166 CALL                             R18 1 1
      167 SETTABLEKS                       R18 R17 K26 ["LayoutOrder"]
      169 LOADK                            R18 K59 ["Body"]
      170 SETTABLEKS                       R18 R17 K47 ["Style"]
      172 CALL                             R15 2 1
      173 SETTABLEKS                       R15 R14 K42 ["Detail"]
      175 GETUPVAL                         R15 1
      176 GETTABLEKS                       R15 R15 K6 ["createElement"]
      178 GETUPVAL                         R16 5
      179 DUPTABLE                         R17 K60 [{"OnCancel", "OnContinue", "LayoutOrder"}]
      180 SETTABLEKS                       R2 R17 K1 ["OnCancel"]
      182 SETTABLEKS                       R3 R17 K2 ["OnContinue"]
      184 NAMECALL                         R18 R6 K33 ["getNextOrder"]
      186 CALL                             R18 1 1
      187 SETTABLEKS                       R18 R17 K26 ["LayoutOrder"]
      189 CALL                             R15 2 1
      190 SETTABLEKS                       R15 R14 K43 ["Buttons"]
      192 CALL                             R11 3 1
      193 SETTABLEKS                       R11 R10 K22 ["Text"]
      195 CALL                             R7 3 -1
      196 RETURN                           R7 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["R15Migrator"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Roact"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["Framework"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R3 R2 K9 ["ContextServices"]
       23 GETTABLEKS                       R4 R2 K10 ["UI"]
       25 GETTABLEKS                       R5 R4 K11 ["Pane"]
       27 GETTABLEKS                       R6 R4 K12 ["Image"]
       29 GETTABLEKS                       R7 R4 K13 ["TextLabel"]
       31 GETTABLEKS                       R8 R2 K14 ["Util"]
       33 GETTABLEKS                       R8 R8 K15 ["LayoutOrderIterator"]
       35 GETIMPORT                        R9 K5 [require]
       37 GETTABLEKS                       R10 R0 K16 ["Src"]
       39 GETTABLEKS                       R10 R10 K17 ["Components"]
       41 GETTABLEKS                       R10 R10 K18 ["PublishWarning"]
       43 GETTABLEKS                       R10 R10 K19 ["Buttons"]
       45 CALL                             R9 1 1
       46 GETTABLEKS                       R10 R1 K20 ["PureComponent"]
       48 LOADK                            R12 K21 ["PublishWarningDialog"]
       49 NAMECALL                         R10 R10 K22 ["extend"]
       51 CALL                             R10 2 1
       52 DUPCLOSURE                       R11 K23 [PROTO_0]
       53 CAPTURE                          VAL R8
       54 CAPTURE                          VAL R1
       55 CAPTURE                          VAL R5
       56 CAPTURE                          VAL R6
       57 CAPTURE                          VAL R7
       58 CAPTURE                          VAL R9
       59 SETTABLEKS                       R11 R10 K24 ["render"]
       61 GETTABLEKS                       R11 R3 K25 ["withContext"]
       63 DUPTABLE                         R12 K28 [{"Localization", "Stylizer"}]
       64 GETTABLEKS                       R13 R3 K26 ["Localization"]
       66 SETTABLEKS                       R13 R12 K26 ["Localization"]
       68 GETTABLEKS                       R13 R3 K27 ["Stylizer"]
       70 SETTABLEKS                       R13 R12 K27 ["Stylizer"]
       72 CALL                             R11 1 1
       73 MOVE                             R12 R10
       74 CALL                             R11 1 1
       75 MOVE                             R10 R11
       76 RETURN                           R10 1
