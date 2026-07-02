PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Stylizer"]
        4 GETTABLEKS                       R3 R1 K2 ["Expanded"]
        6 GETTABLEKS                       R4 R1 K3 ["RenderContent"]
        8 LOADNIL                          R5
        9 LOADNIL                          R6
       10 LOADNIL                          R7
       11 JUMPIFNOT                        R3 ; [+5]
       12 LOADK                            R7 K4 ["BorderBox"]
       13 GETTABLEKS                       R6 R2 K5 ["SelectedBorderColor"]
       15 GETTABLEKS                       R5 R2 K6 ["SelectedColor"]
       17 GETTABLEKS                       R8 R1 K7 ["LayoutOrder"]
       19 GETUPVAL                         R9 0
       20 GETTABLEKS                       R9 R9 K8 ["new"]
       22 CALL                             R9 0 1
       23 GETUPVAL                         R10 1
       24 GETTABLEKS                       R10 R10 K9 ["createElement"]
       26 GETUPVAL                         R11 2
       27 DUPTABLE                         R12 K18 [{"BorderColor", "BackgroundColor3", "Style", "AutomaticSize", "Layout", "LayoutOrder", "HorizontalAlignment", "VerticalAlignment", "OnClick"}]
       28 SETTABLEKS                       R6 R12 K10 ["BorderColor"]
       30 SETTABLEKS                       R5 R12 K11 ["BackgroundColor3"]
       32 SETTABLEKS                       R7 R12 K12 ["Style"]
       34 GETIMPORT                        R13 K21 [Enum.AutomaticSize.Y]
       36 SETTABLEKS                       R13 R12 K13 ["AutomaticSize"]
       38 GETIMPORT                        R13 K24 [Enum.FillDirection.Vertical]
       40 SETTABLEKS                       R13 R12 K14 ["Layout"]
       42 SETTABLEKS                       R8 R12 K7 ["LayoutOrder"]
       44 GETIMPORT                        R13 K26 [Enum.HorizontalAlignment.Left]
       46 SETTABLEKS                       R13 R12 K15 ["HorizontalAlignment"]
       48 GETIMPORT                        R13 K28 [Enum.VerticalAlignment.Top]
       50 SETTABLEKS                       R13 R12 K16 ["VerticalAlignment"]
       52 GETTABLEKS                       R13 R1 K29 ["OnExpandedChanged"]
       54 SETTABLEKS                       R13 R12 K17 ["OnClick"]
       56 DUPTABLE                         R13 K32 [{"Header", "Container"}]
       57 NAMECALL                         R16 R9 K33 ["getNextOrder"]
       59 CALL                             R16 1 -1
       60 NAMECALL                         R14 R0 K34 ["renderHeader"]
       62 CALL                             R14 -1 1
       63 SETTABLEKS                       R14 R13 K30 ["Header"]
       65 JUMPIFNOT                        R3 ; [+27]
       66 GETUPVAL                         R14 1
       67 GETTABLEKS                       R14 R14 K9 ["createElement"]
       69 GETUPVAL                         R15 2
       70 DUPTABLE                         R16 K36 [{"LayoutOrder", "AutomaticSize", "Padding"}]
       71 NAMECALL                         R17 R9 K33 ["getNextOrder"]
       73 CALL                             R17 1 1
       74 SETTABLEKS                       R17 R16 K7 ["LayoutOrder"]
       76 GETIMPORT                        R17 K38 [Enum.AutomaticSize.XY]
       78 SETTABLEKS                       R17 R16 K13 ["AutomaticSize"]
       80 GETTABLEKS                       R17 R2 K39 ["Content"]
       82 GETTABLEKS                       R17 R17 K35 ["Padding"]
       84 SETTABLEKS                       R17 R16 K35 ["Padding"]
       86 DUPTABLE                         R17 K40 [{"Content"}]
       87 MOVE                             R18 R4
       88 CALL                             R18 0 1
       89 SETTABLEKS                       R18 R17 K39 ["Content"]
       91 CALL                             R14 3 1
       92 JUMP                             ; [+1]
       93 LOADNIL                          R14
       94 SETTABLEKS                       R14 R13 K31 ["Container"]
       96 CALL                             R10 3 -1
       97 RETURN                           R10 -1

PROTO_1:
        0 GETTABLEKS                       R2 R0 K0 ["props"]
        2 GETTABLEKS                       R3 R2 K1 ["Stylizer"]
        4 GETTABLEKS                       R4 R3 K2 ["Header"]
        6 GETTABLEKS                       R5 R2 K3 ["Localization"]
        8 GETTABLEKS                       R6 R2 K4 ["Size"]
       10 GETTABLEKS                       R7 R2 K5 ["Selected"]
       12 GETTABLEKS                       R8 R2 K6 ["Expanded"]
       14 GETTABLEKS                       R9 R2 K7 ["StatusKey"]
       16 GETTABLEKS                       R10 R2 K8 ["OnClick"]
       18 GETUPVAL                         R11 0
       19 GETTABLEKS                       R11 R11 K9 ["new"]
       21 CALL                             R11 0 1
       22 LOADNIL                          R12
       23 JUMPIFNOT                        R8 ; [+2]
       24 LOADNIL                          R12
       25 JUMP                             ; [+2]
       26 GETTABLEKS                       R12 R4 K10 ["BackgroundColor"]
       28 GETUPVAL                         R13 1
       29 GETTABLEKS                       R13 R13 K11 ["createElement"]
       31 GETUPVAL                         R14 2
       32 DUPTABLE                         R15 K20 [{["BackgroundColor3"], ["BorderSizePixel"] = 0, ["HorizontalAlignment"], ["LayoutOrder"], ["Layout"], ["Padding"], ["Size"], ["VerticalAlignment"]}]
       33 SETTABLEKS                       R12 R15 K12 ["BackgroundColor3"]
       35 GETTABLEKS                       R16 R4 K15 ["HorizontalAlignment"]
       37 SETTABLEKS                       R16 R15 K15 ["HorizontalAlignment"]
       39 SETTABLEKS                       R1 R15 K16 ["LayoutOrder"]
       41 GETIMPORT                        R16 K24 [Enum.FillDirection.Horizontal]
       43 SETTABLEKS                       R16 R15 K17 ["Layout"]
       45 GETTABLEKS                       R16 R4 K18 ["Padding"]
       47 SETTABLEKS                       R16 R15 K18 ["Padding"]
       49 SETTABLEKS                       R6 R15 K4 ["Size"]
       51 GETTABLEKS                       R16 R4 K19 ["VerticalAlignment"]
       53 SETTABLEKS                       R16 R15 K19 ["VerticalAlignment"]
       55 DUPTABLE                         R16 K27 [{"Checkbox", "MainElements"}]
       56 GETUPVAL                         R17 1
       57 GETTABLEKS                       R17 R17 K11 ["createElement"]
       59 GETUPVAL                         R18 3
       60 DUPTABLE                         R19 K29 [{"Checked", "OnClick", "LayoutOrder"}]
       61 SETTABLEKS                       R7 R19 K28 ["Checked"]
       63 SETTABLEKS                       R10 R19 K8 ["OnClick"]
       65 NAMECALL                         R20 R11 K30 ["getNextOrder"]
       67 CALL                             R20 1 1
       68 SETTABLEKS                       R20 R19 K16 ["LayoutOrder"]
       70 CALL                             R17 2 1
       71 SETTABLEKS                       R17 R16 K25 ["Checkbox"]
       73 GETUPVAL                         R17 1
       74 GETTABLEKS                       R17 R17 K11 ["createElement"]
       76 GETUPVAL                         R18 2
       77 DUPTABLE                         R19 K32 [{["BackgroundColor3"], ["BorderSizePixel"] = 0, ["HorizontalAlignment"], ["LayoutOrder"], ["Layout"], ["Size"], ["Spacing"], ["VerticalAlignment"]}]
       78 SETTABLEKS                       R12 R19 K12 ["BackgroundColor3"]
       80 GETTABLEKS                       R20 R4 K15 ["HorizontalAlignment"]
       82 SETTABLEKS                       R20 R19 K15 ["HorizontalAlignment"]
       84 NAMECALL                         R20 R11 K30 ["getNextOrder"]
       86 CALL                             R20 1 1
       87 SETTABLEKS                       R20 R19 K16 ["LayoutOrder"]
       89 GETIMPORT                        R20 K24 [Enum.FillDirection.Horizontal]
       91 SETTABLEKS                       R20 R19 K17 ["Layout"]
       93 GETIMPORT                        R20 K34 [UDim2.new]
       95 LOADN                            R21 1
       96 GETTABLEKS                       R23 R4 K18 ["Padding"]
       98 GETTABLEKS                       R23 R23 K35 ["Right"]
      100 MINUS                            R22 R23
      101 LOADN                            R23 1
      102 LOADN                            R24 0
      103 CALL                             R20 4 1
      104 SETTABLEKS                       R20 R19 K4 ["Size"]
      106 GETTABLEKS                       R20 R4 K31 ["Spacing"]
      108 SETTABLEKS                       R20 R19 K31 ["Spacing"]
      110 GETTABLEKS                       R20 R4 K19 ["VerticalAlignment"]
      112 SETTABLEKS                       R20 R19 K19 ["VerticalAlignment"]
      114 DUPTABLE                         R20 K39 [{"Arrow", "Title", "Icon"}]
      115 GETUPVAL                         R21 1
      116 GETTABLEKS                       R21 R21 K11 ["createElement"]
      118 LOADK                            R22 K40 ["TextButton"]
      119 NEWTABLE                         R23 8 0
      121 LOADN                            R24 1
      122 SETTABLEKS                       R24 R23 K41 ["BackgroundTransparency"]
      124 LOADK                            R24 K42 [""]
      125 SETTABLEKS                       R24 R23 K43 ["Text"]
      127 NAMECALL                         R24 R11 K30 ["getNextOrder"]
      129 CALL                             R24 1 1
      130 SETTABLEKS                       R24 R23 K16 ["LayoutOrder"]
      132 GETTABLEKS                       R24 R4 K36 ["Arrow"]
      134 GETTABLEKS                       R24 R24 K4 ["Size"]
      136 SETTABLEKS                       R24 R23 K4 ["Size"]
      138 GETUPVAL                         R24 1
      139 GETTABLEKS                       R24 R24 K44 ["Event"]
      141 GETTABLEKS                       R24 R24 K45 ["MouseButton1Click"]
      143 GETTABLEKS                       R25 R2 K46 ["OnExpandedChanged"]
      145 SETTABLE                         R25 R23 R24
      146 DUPTABLE                         R24 K48 [{"Image"}]
      147 GETUPVAL                         R25 1
      148 GETTABLEKS                       R25 R25 K11 ["createElement"]
      150 GETUPVAL                         R26 4
      151 DUPTABLE                         R27 K51 [{"Style", "StyleModifier"}]
      152 GETTABLEKS                       R28 R4 K36 ["Arrow"]
      154 SETTABLEKS                       R28 R27 K49 ["Style"]
      156 GETTABLEKS                       R29 R2 K6 ["Expanded"]
      158 JUMPIFNOT                        R29 ; [+4]
      159 GETUPVAL                         R28 5
      160 GETTABLEKS                       R28 R28 K5 ["Selected"]
      162 JUMPIF                           R28 ; [+1]
      163 LOADNIL                          R28
      164 SETTABLEKS                       R28 R27 K50 ["StyleModifier"]
      166 CALL                             R25 2 1
      167 SETTABLEKS                       R25 R24 K47 ["Image"]
      169 CALL                             R21 3 1
      170 SETTABLEKS                       R21 R20 K36 ["Arrow"]
      172 GETUPVAL                         R21 1
      173 GETTABLEKS                       R21 R21 K11 ["createElement"]
      175 GETUPVAL                         R22 6
      176 DUPTABLE                         R23 K55 [{["AutomaticSize"], ["LayoutOrder"], ["Style"], ["Text"], ["TextWrapped"] = True}]
      177 GETIMPORT                        R24 K57 [Enum.AutomaticSize.XY]
      179 SETTABLEKS                       R24 R23 K52 ["AutomaticSize"]
      181 NAMECALL                         R24 R11 K30 ["getNextOrder"]
      183 CALL                             R24 1 1
      184 SETTABLEKS                       R24 R23 K16 ["LayoutOrder"]
      186 GETTABLEKS                       R24 R4 K43 ["Text"]
      188 SETTABLEKS                       R24 R23 K49 ["Style"]
      190 GETTABLEKS                       R24 R2 K43 ["Text"]
      192 SETTABLEKS                       R24 R23 K43 ["Text"]
      194 CALL                             R21 2 1
      195 SETTABLEKS                       R21 R20 K37 ["Title"]
      197 MOVE                             R21 R9
      198 JUMPIFNOT                        R21 ; [+43]
      199 GETUPVAL                         R21 1
      200 GETTABLEKS                       R21 R21 K11 ["createElement"]
      202 GETUPVAL                         R22 4
      203 DUPTABLE                         R23 K59 [{"Image", "Size", "AnchorPoint", "LayoutOrder"}]
      204 GETTABLEKS                       R25 R3 K60 ["Icons"]
      206 GETTABLE                         R24 R25 R9
      207 SETTABLEKS                       R24 R23 K47 ["Image"]
      209 GETTABLEKS                       R24 R3 K61 ["StatusImageSize"]
      211 SETTABLEKS                       R24 R23 K4 ["Size"]
      213 GETIMPORT                        R24 K63 [Vector2.new]
      215 LOADN                            R25 1
      216 LOADK                            R26 K64 [0.5]
      217 CALL                             R24 2 1
      218 SETTABLEKS                       R24 R23 K58 ["AnchorPoint"]
      220 NAMECALL                         R24 R11 K30 ["getNextOrder"]
      222 CALL                             R24 1 1
      223 SETTABLEKS                       R24 R23 K16 ["LayoutOrder"]
      225 DUPTABLE                         R24 K66 [{"Tooltip"}]
      226 GETUPVAL                         R25 1
      227 GETTABLEKS                       R25 R25 K11 ["createElement"]
      229 GETUPVAL                         R26 7
      230 DUPTABLE                         R27 K67 [{"Text"}]
      231 LOADK                            R30 K68 ["CharacterConversion"]
      232 MOVE                             R31 R9
      233 NAMECALL                         R28 R5 K69 ["getText"]
      235 CALL                             R28 3 1
      236 SETTABLEKS                       R28 R27 K43 ["Text"]
      238 CALL                             R25 2 1
      239 SETTABLEKS                       R25 R24 K65 ["Tooltip"]
      241 CALL                             R21 3 1
      242 SETTABLEKS                       R21 R20 K38 ["Icon"]
      244 CALL                             R17 3 1
      245 SETTABLEKS                       R17 R16 K26 ["MainElements"]
      247 CALL                             R13 3 -1
      248 RETURN                           R13 -1

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
       23 GETTABLEKS                       R4 R3 K10 ["withContext"]
       25 GETTABLEKS                       R5 R2 K11 ["UI"]
       27 GETTABLEKS                       R6 R5 K12 ["Pane"]
       29 GETTABLEKS                       R7 R5 K13 ["Tooltip"]
       31 GETTABLEKS                       R8 R5 K14 ["Image"]
       33 GETTABLEKS                       R9 R5 K15 ["TextLabel"]
       35 GETTABLEKS                       R10 R5 K16 ["Checkbox"]
       37 GETTABLEKS                       R11 R2 K17 ["Util"]
       39 GETTABLEKS                       R12 R11 K18 ["LayoutOrderIterator"]
       41 GETTABLEKS                       R13 R11 K19 ["StyleModifier"]
       43 GETTABLEKS                       R14 R1 K20 ["PureComponent"]
       45 LOADK                            R16 K21 ["ExpandableCharacterListItem"]
       46 NAMECALL                         R14 R14 K22 ["extend"]
       48 CALL                             R14 2 1
       49 DUPCLOSURE                       R15 K23 [PROTO_0]
       50 CAPTURE                          VAL R12
       51 CAPTURE                          VAL R1
       52 CAPTURE                          VAL R6
       53 SETTABLEKS                       R15 R14 K24 ["render"]
       55 DUPCLOSURE                       R15 K25 [PROTO_1]
       56 CAPTURE                          VAL R12
       57 CAPTURE                          VAL R1
       58 CAPTURE                          VAL R6
       59 CAPTURE                          VAL R10
       60 CAPTURE                          VAL R8
       61 CAPTURE                          VAL R13
       62 CAPTURE                          VAL R9
       63 CAPTURE                          VAL R7
       64 SETTABLEKS                       R15 R14 K26 ["renderHeader"]
       66 MOVE                             R15 R4
       67 DUPTABLE                         R16 K29 [{"Stylizer", "Localization"}]
       68 GETTABLEKS                       R17 R3 K27 ["Stylizer"]
       70 SETTABLEKS                       R17 R16 K27 ["Stylizer"]
       72 GETTABLEKS                       R17 R3 K28 ["Localization"]
       74 SETTABLEKS                       R17 R16 K28 ["Localization"]
       76 CALL                             R15 1 1
       77 MOVE                             R16 R14
       78 CALL                             R15 1 1
       79 MOVE                             R14 R15
       80 RETURN                           R14 1
