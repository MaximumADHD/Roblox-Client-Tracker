PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["LayoutOrder"]
        4 GETTABLEKS                       R3 R1 K2 ["OnActivated"]
        6 GETTABLEKS                       R4 R1 K3 ["Title"]
        8 GETTABLEKS                       R5 R1 K4 ["Description"]
       10 GETTABLEKS                       R6 R1 K5 ["Stylizer"]
       12 GETTABLEKS                       R7 R6 K6 ["detailedDropdown"]
       14 GETTABLEKS                       R8 R1 K7 ["Selected"]
       16 GETTABLEKS                       R9 R1 K8 ["IsHovered"]
       18 JUMPIFNOT                        R9 ; [+5]
       19 GETTABLEKS                       R10 R7 K9 ["hovered"]
       21 GETTABLEKS                       R10 R10 K10 ["displayText"]
       23 JUMPIF                           R10 ; [+2]
       24 GETTABLEKS                       R10 R7 K10 ["displayText"]
       26 GETUPVAL                         R11 0
       27 GETTABLEKS                       R11 R11 K11 ["createElement"]
       29 GETUPVAL                         R12 1
       30 DUPTABLE                         R13 K16 [{"AutomaticSize", "LayoutOrder", "OnClick", "Size", "Style"}]
       31 GETIMPORT                        R14 K19 [Enum.AutomaticSize.Y]
       33 SETTABLEKS                       R14 R13 K12 ["AutomaticSize"]
       35 SETTABLEKS                       R2 R13 K1 ["LayoutOrder"]
       37 SETTABLEKS                       R3 R13 K13 ["OnClick"]
       39 GETIMPORT                        R14 K22 [UDim2.new]
       41 LOADN                            R15 1
       42 LOADN                            R16 0
       43 LOADN                            R17 0
       44 LOADN                            R18 60
       45 CALL                             R14 4 1
       46 SETTABLEKS                       R14 R13 K14 ["Size"]
       48 JUMPIFNOT                        R8 ; [+2]
       49 LOADK                            R14 K23 ["SelectedDetailedDropdownItem"]
       50 JUMP                             ; [+1]
       51 LOADNIL                          R14
       52 SETTABLEKS                       R14 R13 K15 ["Style"]
       54 DUPTABLE                         R14 K28 [{"UIListLayout", "Padding", "MainTextLabel", "DescriptionTextLabel"}]
       55 GETUPVAL                         R15 0
       56 GETTABLEKS                       R15 R15 K11 ["createElement"]
       58 LOADK                            R16 K24 ["UIListLayout"]
       59 DUPTABLE                         R17 K30 [{"SortOrder"}]
       60 GETIMPORT                        R18 K31 [Enum.SortOrder.LayoutOrder]
       62 SETTABLEKS                       R18 R17 K29 ["SortOrder"]
       64 CALL                             R15 2 1
       65 SETTABLEKS                       R15 R14 K24 ["UIListLayout"]
       67 GETUPVAL                         R15 0
       68 GETTABLEKS                       R15 R15 K11 ["createElement"]
       70 LOADK                            R16 K32 ["UIPadding"]
       71 DUPTABLE                         R17 K35 [{"PaddingTop", "PaddingBottom"}]
       72 GETIMPORT                        R18 K37 [UDim.new]
       74 LOADN                            R19 0
       75 LOADN                            R20 10
       76 CALL                             R18 2 1
       77 SETTABLEKS                       R18 R17 K33 ["PaddingTop"]
       79 GETIMPORT                        R18 K37 [UDim.new]
       81 LOADN                            R19 0
       82 LOADN                            R20 10
       83 CALL                             R18 2 1
       84 SETTABLEKS                       R18 R17 K34 ["PaddingBottom"]
       86 CALL                             R15 2 1
       87 SETTABLEKS                       R15 R14 K25 ["Padding"]
       89 GETUPVAL                         R15 0
       90 GETTABLEKS                       R15 R15 K11 ["createElement"]
       92 LOADK                            R16 K38 ["TextLabel"]
       93 DUPTABLE                         R17 K46 [{"AutomaticSize", "BackgroundTransparency", "Size", "Font", "TextSize", "Text", "TextXAlignment", "TextColor3", "TextWrapped", "LayoutOrder"}]
       94 GETIMPORT                        R18 K19 [Enum.AutomaticSize.Y]
       96 SETTABLEKS                       R18 R17 K12 ["AutomaticSize"]
       98 LOADN                            R18 1
       99 SETTABLEKS                       R18 R17 K39 ["BackgroundTransparency"]
      101 GETIMPORT                        R18 K22 [UDim2.new]
      103 LOADN                            R19 1
      104 LOADN                            R20 0
      105 LOADN                            R21 0
      106 LOADN                            R22 0
      107 CALL                             R18 4 1
      108 SETTABLEKS                       R18 R17 K14 ["Size"]
      110 GETUPVAL                         R18 2
      111 GETTABLEKS                       R18 R18 K47 ["FONT"]
      113 SETTABLEKS                       R18 R17 K40 ["Font"]
      115 LOADN                            R18 20
      116 SETTABLEKS                       R18 R17 K41 ["TextSize"]
      118 SETTABLEKS                       R4 R17 K42 ["Text"]
      120 GETIMPORT                        R18 K49 [Enum.TextXAlignment.Left]
      122 SETTABLEKS                       R18 R17 K43 ["TextXAlignment"]
      124 SETTABLEKS                       R10 R17 K44 ["TextColor3"]
      126 LOADB                            R18 1
      127 SETTABLEKS                       R18 R17 K45 ["TextWrapped"]
      129 LOADN                            R18 0
      130 SETTABLEKS                       R18 R17 K1 ["LayoutOrder"]
      132 DUPTABLE                         R18 K50 [{"Padding"}]
      133 GETUPVAL                         R19 0
      134 GETTABLEKS                       R19 R19 K11 ["createElement"]
      136 LOADK                            R20 K32 ["UIPadding"]
      137 DUPTABLE                         R21 K52 [{"PaddingLeft"}]
      138 GETIMPORT                        R22 K37 [UDim.new]
      140 LOADN                            R23 0
      141 LOADN                            R24 10
      142 CALL                             R22 2 1
      143 SETTABLEKS                       R22 R21 K51 ["PaddingLeft"]
      145 CALL                             R19 2 1
      146 SETTABLEKS                       R19 R18 K25 ["Padding"]
      148 CALL                             R15 3 1
      149 SETTABLEKS                       R15 R14 K26 ["MainTextLabel"]
      151 GETUPVAL                         R15 0
      152 GETTABLEKS                       R15 R15 K11 ["createElement"]
      154 LOADK                            R16 K38 ["TextLabel"]
      155 DUPTABLE                         R17 K46 [{"AutomaticSize", "BackgroundTransparency", "Size", "Font", "TextSize", "Text", "TextXAlignment", "TextColor3", "TextWrapped", "LayoutOrder"}]
      156 GETIMPORT                        R18 K19 [Enum.AutomaticSize.Y]
      158 SETTABLEKS                       R18 R17 K12 ["AutomaticSize"]
      160 LOADN                            R18 1
      161 SETTABLEKS                       R18 R17 K39 ["BackgroundTransparency"]
      163 GETIMPORT                        R18 K22 [UDim2.new]
      165 LOADN                            R19 1
      166 LOADN                            R20 0
      167 LOADN                            R21 0
      168 LOADN                            R22 0
      169 CALL                             R18 4 1
      170 SETTABLEKS                       R18 R17 K14 ["Size"]
      172 GETUPVAL                         R18 2
      173 GETTABLEKS                       R18 R18 K47 ["FONT"]
      175 SETTABLEKS                       R18 R17 K40 ["Font"]
      177 LOADN                            R18 18
      178 SETTABLEKS                       R18 R17 K41 ["TextSize"]
      180 SETTABLEKS                       R5 R17 K42 ["Text"]
      182 GETIMPORT                        R18 K49 [Enum.TextXAlignment.Left]
      184 SETTABLEKS                       R18 R17 K43 ["TextXAlignment"]
      186 GETTABLEKS                       R18 R7 K53 ["descriptionText"]
      188 SETTABLEKS                       R18 R17 K44 ["TextColor3"]
      190 LOADB                            R18 1
      191 SETTABLEKS                       R18 R17 K45 ["TextWrapped"]
      193 LOADN                            R18 1
      194 SETTABLEKS                       R18 R17 K1 ["LayoutOrder"]
      196 DUPTABLE                         R18 K50 [{"Padding"}]
      197 GETUPVAL                         R19 0
      198 GETTABLEKS                       R19 R19 K11 ["createElement"]
      200 LOADK                            R20 K32 ["UIPadding"]
      201 DUPTABLE                         R21 K55 [{"PaddingRight", "PaddingLeft"}]
      202 GETIMPORT                        R22 K37 [UDim.new]
      204 LOADN                            R23 0
      205 LOADN                            R24 10
      206 CALL                             R22 2 1
      207 SETTABLEKS                       R22 R21 K54 ["PaddingRight"]
      209 GETIMPORT                        R22 K37 [UDim.new]
      211 LOADN                            R23 0
      212 LOADN                            R24 10
      213 CALL                             R22 2 1
      214 SETTABLEKS                       R22 R21 K51 ["PaddingLeft"]
      216 CALL                             R19 2 1
      217 SETTABLEKS                       R19 R18 K25 ["Padding"]
      219 CALL                             R15 3 1
      220 SETTABLEKS                       R15 R14 K27 ["DescriptionTextLabel"]
      222 CALL                             R11 3 -1
      223 RETURN                           R11 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETTABLEKS                       R0 R0 K2 ["Parent"]
       11 GETTABLEKS                       R0 R0 K2 ["Parent"]
       13 GETTABLEKS                       R1 R0 K3 ["Packages"]
       15 GETIMPORT                        R2 K5 [require]
       17 GETTABLEKS                       R3 R1 K6 ["Roact"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K5 [require]
       22 GETTABLEKS                       R4 R1 K7 ["Framework"]
       24 CALL                             R3 1 1
       25 GETTABLEKS                       R4 R3 K8 ["ContextServices"]
       27 GETTABLEKS                       R5 R4 K9 ["withContext"]
       29 GETTABLEKS                       R6 R3 K10 ["UI"]
       31 GETTABLEKS                       R6 R6 K11 ["Button"]
       33 GETIMPORT                        R7 K5 [require]
       35 GETTABLEKS                       R8 R0 K12 ["Src"]
       37 GETTABLEKS                       R8 R8 K13 ["Util"]
       39 GETTABLEKS                       R8 R8 K14 ["Constants"]
       41 CALL                             R7 1 1
       42 GETTABLEKS                       R8 R2 K15 ["PureComponent"]
       44 LOADK                            R10 K16 ["DetailedDropdownItem"]
       45 NAMECALL                         R8 R8 K17 ["extend"]
       47 CALL                             R8 2 1
       48 DUPCLOSURE                       R9 K18 [PROTO_0]
       49 CAPTURE                          VAL R2
       50 CAPTURE                          VAL R6
       51 CAPTURE                          VAL R7
       52 SETTABLEKS                       R9 R8 K19 ["render"]
       54 MOVE                             R9 R5
       55 DUPTABLE                         R10 K21 [{"Stylizer"}]
       56 GETTABLEKS                       R11 R4 K20 ["Stylizer"]
       58 SETTABLEKS                       R11 R10 K20 ["Stylizer"]
       60 CALL                             R9 1 1
       61 MOVE                             R10 R8
       62 CALL                             R9 1 1
       63 MOVE                             R8 R9
       64 RETURN                           R8 1
