PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R1 R1 K1 ["Stylizer"]
        4 GETTABLEKS                       R2 R0 K0 ["props"]
        6 GETTABLEKS                       R2 R2 K2 ["Header"]
        8 GETTABLEKS                       R3 R0 K0 ["props"]
       10 GETTABLEKS                       R3 R3 K3 ["LayoutOrder"]
       12 GETTABLEKS                       R5 R0 K0 ["props"]
       14 GETTABLEKS                       R5 R5 K5 ["ZIndex"]
       16 ORK                              R4 R5 K4 [1]
       17 GETTABLEKS                       R6 R0 K0 ["props"]
       19 GETUPVAL                         R7 0
       20 GETTABLEKS                       R7 R7 K6 ["Children"]
       22 GETTABLE                         R5 R6 R7
       23 JUMPIF                           R5 ; [+2]
       24 NEWTABLE                         R5 0 0
       26 GETTABLEKS                       R6 R1 K7 ["searchOptions"]
       28 GETUPVAL                         R7 1
       29 MOVE                             R8 R2
       30 LOADNIL                          R9
       31 LOADNIL                          R10
       32 GETIMPORT                        R11 K10 [Vector2.new]
       34 LOADN                            R12 0
       35 LOADN                            R13 0
       36 CALL                             R11 2 -1
       37 CALL                             R7 -1 1
       38 GETUPVAL                         R9 2
       39 CALL                             R9 0 1
       40 JUMPIFNOT                        R9 ; [+5]
       41 GETUPVAL                         R8 3
       42 GETTABLEKS                       R8 R8 K9 ["new"]
       44 CALL                             R8 0 1
       45 JUMP                             ; [+1]
       46 LOADNIL                          R8
       47 GETUPVAL                         R10 2
       48 CALL                             R10 0 1
       49 JUMPIFNOT                        R10 ; [+134]
       50 DUPTABLE                         R9 K13 [{"Header", "Content", "SeparatorWithPadding"}]
       51 GETUPVAL                         R10 0
       52 GETTABLEKS                       R10 R10 K14 ["createElement"]
       54 LOADK                            R11 K15 ["TextLabel"]
       55 DUPTABLE                         R12 K22 [{"LayoutOrder", "BackgroundTransparency", "Font", "TextSize", "TextColor3", "Size", "Text"}]
       56 NAMECALL                         R13 R8 K23 ["getNextOrder"]
       58 CALL                             R13 1 1
       59 SETTABLEKS                       R13 R12 K3 ["LayoutOrder"]
       61 LOADN                            R13 1
       62 SETTABLEKS                       R13 R12 K16 ["BackgroundTransparency"]
       64 GETUPVAL                         R13 4
       65 GETTABLEKS                       R13 R13 K24 ["FONT"]
       67 SETTABLEKS                       R13 R12 K17 ["Font"]
       69 GETUPVAL                         R13 4
       70 GETTABLEKS                       R13 R13 K25 ["FONT_SIZE_MEDIUM"]
       72 SETTABLEKS                       R13 R12 K18 ["TextSize"]
       74 GETTABLEKS                       R13 R6 K26 ["headerTextColor"]
       76 SETTABLEKS                       R13 R12 K19 ["TextColor3"]
       78 GETIMPORT                        R13 K28 [UDim2.new]
       80 LOADN                            R14 0
       81 GETTABLEKS                       R15 R7 K29 ["X"]
       83 LOADN                            R16 0
       84 GETTABLEKS                       R17 R7 K30 ["Y"]
       86 CALL                             R13 4 1
       87 SETTABLEKS                       R13 R12 K20 ["Size"]
       89 SETTABLEKS                       R2 R12 K21 ["Text"]
       91 CALL                             R10 2 1
       92 SETTABLEKS                       R10 R9 K2 ["Header"]
       94 GETUPVAL                         R10 0
       95 GETTABLEKS                       R10 R10 K14 ["createElement"]
       97 GETUPVAL                         R11 5
       98 DUPTABLE                         R12 K35 [{"AutomaticSize", "HorizontalAlignment", "Layout", "LayoutOrder", "Size", "Spacing"}]
       99 GETIMPORT                        R13 K38 [Enum.AutomaticSize.XY]
      101 SETTABLEKS                       R13 R12 K31 ["AutomaticSize"]
      103 GETIMPORT                        R13 K40 [Enum.HorizontalAlignment.Left]
      105 SETTABLEKS                       R13 R12 K32 ["HorizontalAlignment"]
      107 GETIMPORT                        R13 K43 [Enum.FillDirection.Vertical]
      109 SETTABLEKS                       R13 R12 K33 ["Layout"]
      111 NAMECALL                         R13 R8 K23 ["getNextOrder"]
      113 CALL                             R13 1 1
      114 SETTABLEKS                       R13 R12 K3 ["LayoutOrder"]
      116 GETIMPORT                        R13 K45 [UDim2.fromScale]
      118 LOADN                            R14 1
      119 LOADN                            R15 0
      120 CALL                             R13 2 1
      121 SETTABLEKS                       R13 R12 K20 ["Size"]
      123 LOADN                            R13 10
      124 SETTABLEKS                       R13 R12 K34 ["Spacing"]
      126 MOVE                             R13 R5
      127 CALL                             R10 3 1
      128 SETTABLEKS                       R10 R9 K11 ["Content"]
      130 GETTABLEKS                       R11 R0 K0 ["props"]
      132 GETTABLEKS                       R11 R11 K46 ["HideLowerSeparator"]
      134 JUMPIF                           R11 ; [+45]
      135 GETUPVAL                         R10 0
      136 GETTABLEKS                       R10 R10 K14 ["createElement"]
      138 GETUPVAL                         R11 5
      139 DUPTABLE                         R12 K48 [{"AutomaticSize", "HorizontalAlignment", "Layout", "LayoutOrder", "Padding", "Size"}]
      140 GETIMPORT                        R13 K38 [Enum.AutomaticSize.XY]
      142 SETTABLEKS                       R13 R12 K31 ["AutomaticSize"]
      144 GETIMPORT                        R13 K40 [Enum.HorizontalAlignment.Left]
      146 SETTABLEKS                       R13 R12 K32 ["HorizontalAlignment"]
      148 GETIMPORT                        R13 K43 [Enum.FillDirection.Vertical]
      150 SETTABLEKS                       R13 R12 K33 ["Layout"]
      152 NAMECALL                         R13 R8 K23 ["getNextOrder"]
      154 CALL                             R13 1 1
      155 SETTABLEKS                       R13 R12 K3 ["LayoutOrder"]
      157 DUPTABLE                         R13 K50 [{"Top"}]
      158 LOADN                            R14 10
      159 SETTABLEKS                       R14 R13 K49 ["Top"]
      161 SETTABLEKS                       R13 R12 K47 ["Padding"]
      163 GETIMPORT                        R13 K45 [UDim2.fromScale]
      165 LOADN                            R14 1
      166 LOADN                            R15 0
      167 CALL                             R13 2 1
      168 SETTABLEKS                       R13 R12 K20 ["Size"]
      170 DUPTABLE                         R13 K52 [{"Separator"}]
      171 GETUPVAL                         R14 0
      172 GETTABLEKS                       R14 R14 K14 ["createElement"]
      174 GETUPVAL                         R15 6
      175 CALL                             R14 1 1
      176 SETTABLEKS                       R14 R13 K51 ["Separator"]
      178 CALL                             R10 3 1
      179 JUMP                             ; [+1]
      180 LOADNIL                          R10
      181 SETTABLEKS                       R10 R9 K12 ["SeparatorWithPadding"]
      183 JUMP                             ; [+49]
      184 GETUPVAL                         R9 7
      185 GETTABLEKS                       R9 R9 K53 ["Dictionary"]
      187 GETTABLEKS                       R9 R9 K54 ["join"]
      189 MOVE                             R10 R5
      190 DUPTABLE                         R11 K55 [{"Header"}]
      191 GETUPVAL                         R12 0
      192 GETTABLEKS                       R12 R12 K14 ["createElement"]
      194 LOADK                            R13 K15 ["TextLabel"]
      195 DUPTABLE                         R14 K22 [{"LayoutOrder", "BackgroundTransparency", "Font", "TextSize", "TextColor3", "Size", "Text"}]
      196 LOADN                            R15 255
      197 SETTABLEKS                       R15 R14 K3 ["LayoutOrder"]
      199 LOADN                            R15 1
      200 SETTABLEKS                       R15 R14 K16 ["BackgroundTransparency"]
      202 GETUPVAL                         R15 4
      203 GETTABLEKS                       R15 R15 K24 ["FONT"]
      205 SETTABLEKS                       R15 R14 K17 ["Font"]
      207 GETUPVAL                         R15 4
      208 GETTABLEKS                       R15 R15 K25 ["FONT_SIZE_MEDIUM"]
      210 SETTABLEKS                       R15 R14 K18 ["TextSize"]
      212 GETTABLEKS                       R15 R6 K26 ["headerTextColor"]
      214 SETTABLEKS                       R15 R14 K19 ["TextColor3"]
      216 GETIMPORT                        R15 K28 [UDim2.new]
      218 LOADN                            R16 0
      219 GETTABLEKS                       R17 R7 K29 ["X"]
      221 LOADN                            R18 0
      222 GETTABLEKS                       R19 R7 K30 ["Y"]
      224 CALL                             R15 4 1
      225 SETTABLEKS                       R15 R14 K20 ["Size"]
      227 SETTABLEKS                       R2 R14 K21 ["Text"]
      229 CALL                             R12 2 1
      230 SETTABLEKS                       R12 R11 K2 ["Header"]
      232 CALL                             R9 2 1
      233 GETUPVAL                         R10 0
      234 GETTABLEKS                       R10 R10 K14 ["createElement"]
      236 GETUPVAL                         R11 5
      237 DUPTABLE                         R12 K57 [{"AutomaticSize", "HorizontalAlignment", "Layout", "LayoutOrder", "Padding", "Spacing", "VerticalAlignment", "ZIndex"}]
      238 GETIMPORT                        R13 K38 [Enum.AutomaticSize.XY]
      240 SETTABLEKS                       R13 R12 K31 ["AutomaticSize"]
      242 GETIMPORT                        R13 K40 [Enum.HorizontalAlignment.Left]
      244 SETTABLEKS                       R13 R12 K32 ["HorizontalAlignment"]
      246 GETIMPORT                        R13 K43 [Enum.FillDirection.Vertical]
      248 SETTABLEKS                       R13 R12 K33 ["Layout"]
      250 SETTABLEKS                       R3 R12 K3 ["LayoutOrder"]
      252 LOADN                            R13 6
      253 SETTABLEKS                       R13 R12 K47 ["Padding"]
      255 GETUPVAL                         R14 2
      256 CALL                             R14 0 1
      257 JUMPIFNOT                        R14 ; [+2]
      258 LOADN                            R13 6
      259 JUMP                             ; [+1]
      260 LOADNIL                          R13
      261 SETTABLEKS                       R13 R12 K34 ["Spacing"]
      263 GETIMPORT                        R13 K58 [Enum.VerticalAlignment.Top]
      265 SETTABLEKS                       R13 R12 K56 ["VerticalAlignment"]
      267 SETTABLEKS                       R4 R12 K5 ["ZIndex"]
      269 MOVE                             R13 R9
      270 CALL                             R10 3 -1
      271 RETURN                           R10 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETTABLEKS                       R0 R0 K2 ["Parent"]
       11 GETTABLEKS                       R1 R0 K3 ["Packages"]
       13 GETIMPORT                        R2 K5 [require]
       15 GETTABLEKS                       R3 R1 K6 ["Roact"]
       17 CALL                             R2 1 1
       18 GETIMPORT                        R3 K5 [require]
       20 GETTABLEKS                       R4 R1 K7 ["Cryo"]
       22 CALL                             R3 1 1
       23 GETIMPORT                        R4 K5 [require]
       25 GETTABLEKS                       R5 R1 K8 ["Framework"]
       27 CALL                             R4 1 1
       28 GETTABLEKS                       R5 R4 K9 ["Util"]
       30 GETTABLEKS                       R5 R5 K10 ["LayoutOrderIterator"]
       32 GETTABLEKS                       R6 R4 K11 ["UI"]
       34 GETTABLEKS                       R6 R6 K12 ["Separator"]
       36 GETIMPORT                        R7 K5 [require]
       38 GETTABLEKS                       R8 R0 K13 ["Src"]
       40 GETTABLEKS                       R8 R8 K9 ["Util"]
       42 GETTABLEKS                       R8 R8 K14 ["Constants"]
       44 CALL                             R7 1 1
       45 GETTABLEKS                       R8 R4 K11 ["UI"]
       47 GETTABLEKS                       R8 R8 K15 ["Pane"]
       49 GETTABLEKS                       R9 R4 K16 ["ContextServices"]
       51 GETTABLEKS                       R10 R9 K17 ["withContext"]
       53 GETTABLEKS                       R11 R4 K9 ["Util"]
       55 GETTABLEKS                       R11 R11 K18 ["GetTextSize"]
       57 GETIMPORT                        R12 K5 [require]
       59 GETTABLEKS                       R13 R0 K13 ["Src"]
       61 GETTABLEKS                       R13 R13 K9 ["Util"]
       63 GETTABLEKS                       R13 R13 K19 ["SharedFlags"]
       65 GETTABLEKS                       R13 R13 K20 ["getFFlagToolboxEnableSearchOptionsRefactor"]
       67 CALL                             R12 1 1
       68 GETTABLEKS                       R13 R2 K21 ["PureComponent"]
       70 LOADK                            R15 K22 ["SearchOptionsEntry"]
       71 NAMECALL                         R13 R13 K23 ["extend"]
       73 CALL                             R13 2 1
       74 DUPCLOSURE                       R14 K24 [PROTO_0]
       75 CAPTURE                          VAL R2
       76 CAPTURE                          VAL R11
       77 CAPTURE                          VAL R12
       78 CAPTURE                          VAL R5
       79 CAPTURE                          VAL R7
       80 CAPTURE                          VAL R8
       81 CAPTURE                          VAL R6
       82 CAPTURE                          VAL R3
       83 SETTABLEKS                       R14 R13 K25 ["render"]
       85 MOVE                             R14 R10
       86 DUPTABLE                         R15 K27 [{"Stylizer"}]
       87 GETTABLEKS                       R16 R9 K26 ["Stylizer"]
       89 SETTABLEKS                       R16 R15 K26 ["Stylizer"]
       91 CALL                             R14 1 1
       92 MOVE                             R15 R13
       93 CALL                             R14 1 1
       94 MOVE                             R13 R14
       95 RETURN                           R13 1
