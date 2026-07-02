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
       49 JUMPIFNOT                        R10 ; [+125]
       50 DUPTABLE                         R9 K13 [{"Header", "Content", "SeparatorWithPadding"}]
       51 GETUPVAL                         R10 0
       52 GETTABLEKS                       R10 R10 K14 ["createElement"]
       54 LOADK                            R11 K15 ["TextLabel"]
       55 DUPTABLE                         R12 K22 [{["LayoutOrder"], ["BackgroundTransparency"] = 1, ["Font"], ["TextSize"], ["TextColor3"], ["Size"], ["Text"]}]
       56 NAMECALL                         R13 R8 K23 ["getNextOrder"]
       58 CALL                             R13 1 1
       59 SETTABLEKS                       R13 R12 K3 ["LayoutOrder"]
       61 GETUPVAL                         R13 4
       62 GETTABLEKS                       R13 R13 K24 ["FONT"]
       64 SETTABLEKS                       R13 R12 K17 ["Font"]
       66 GETUPVAL                         R13 4
       67 GETTABLEKS                       R13 R13 K25 ["FONT_SIZE_MEDIUM"]
       69 SETTABLEKS                       R13 R12 K18 ["TextSize"]
       71 GETTABLEKS                       R13 R6 K26 ["headerTextColor"]
       73 SETTABLEKS                       R13 R12 K19 ["TextColor3"]
       75 GETIMPORT                        R13 K28 [UDim2.new]
       77 LOADN                            R14 0
       78 GETTABLEKS                       R15 R7 K29 ["X"]
       80 LOADN                            R16 0
       81 GETTABLEKS                       R17 R7 K30 ["Y"]
       83 CALL                             R13 4 1
       84 SETTABLEKS                       R13 R12 K20 ["Size"]
       86 SETTABLEKS                       R2 R12 K21 ["Text"]
       88 CALL                             R10 2 1
       89 SETTABLEKS                       R10 R9 K2 ["Header"]
       91 GETUPVAL                         R10 0
       92 GETTABLEKS                       R10 R10 K14 ["createElement"]
       94 GETUPVAL                         R11 5
       95 DUPTABLE                         R12 K36 [{["AutomaticSize"], ["HorizontalAlignment"], ["Layout"], ["LayoutOrder"], ["Size"], ["Spacing"] = 10}]
       96 GETIMPORT                        R13 K39 [Enum.AutomaticSize.XY]
       98 SETTABLEKS                       R13 R12 K31 ["AutomaticSize"]
      100 GETIMPORT                        R13 K41 [Enum.HorizontalAlignment.Left]
      102 SETTABLEKS                       R13 R12 K32 ["HorizontalAlignment"]
      104 GETIMPORT                        R13 K44 [Enum.FillDirection.Vertical]
      106 SETTABLEKS                       R13 R12 K33 ["Layout"]
      108 NAMECALL                         R13 R8 K23 ["getNextOrder"]
      110 CALL                             R13 1 1
      111 SETTABLEKS                       R13 R12 K3 ["LayoutOrder"]
      113 GETIMPORT                        R13 K46 [UDim2.fromScale]
      115 LOADN                            R14 1
      116 LOADN                            R15 0
      117 CALL                             R13 2 1
      118 SETTABLEKS                       R13 R12 K20 ["Size"]
      120 MOVE                             R13 R5
      121 CALL                             R10 3 1
      122 SETTABLEKS                       R10 R9 K11 ["Content"]
      124 GETTABLEKS                       R11 R0 K0 ["props"]
      126 GETTABLEKS                       R11 R11 K47 ["HideLowerSeparator"]
      128 JUMPIF                           R11 ; [+42]
      129 GETUPVAL                         R10 0
      130 GETTABLEKS                       R10 R10 K14 ["createElement"]
      132 GETUPVAL                         R11 5
      133 DUPTABLE                         R12 K49 [{"AutomaticSize", "HorizontalAlignment", "Layout", "LayoutOrder", "Padding", "Size"}]
      134 GETIMPORT                        R13 K39 [Enum.AutomaticSize.XY]
      136 SETTABLEKS                       R13 R12 K31 ["AutomaticSize"]
      138 GETIMPORT                        R13 K41 [Enum.HorizontalAlignment.Left]
      140 SETTABLEKS                       R13 R12 K32 ["HorizontalAlignment"]
      142 GETIMPORT                        R13 K44 [Enum.FillDirection.Vertical]
      144 SETTABLEKS                       R13 R12 K33 ["Layout"]
      146 NAMECALL                         R13 R8 K23 ["getNextOrder"]
      148 CALL                             R13 1 1
      149 SETTABLEKS                       R13 R12 K3 ["LayoutOrder"]
      151 DUPTABLE                         R13 K51 [{["Top"] = 10}]
      152 SETTABLEKS                       R13 R12 K48 ["Padding"]
      154 GETIMPORT                        R13 K46 [UDim2.fromScale]
      156 LOADN                            R14 1
      157 LOADN                            R15 0
      158 CALL                             R13 2 1
      159 SETTABLEKS                       R13 R12 K20 ["Size"]
      161 DUPTABLE                         R13 K53 [{"Separator"}]
      162 GETUPVAL                         R14 0
      163 GETTABLEKS                       R14 R14 K14 ["createElement"]
      165 GETUPVAL                         R15 6
      166 CALL                             R14 1 1
      167 SETTABLEKS                       R14 R13 K52 ["Separator"]
      169 CALL                             R10 3 1
      170 JUMP                             ; [+1]
      171 LOADNIL                          R10
      172 SETTABLEKS                       R10 R9 K12 ["SeparatorWithPadding"]
      174 JUMP                             ; [+43]
      175 GETUPVAL                         R9 7
      176 GETTABLEKS                       R9 R9 K54 ["Dictionary"]
      178 GETTABLEKS                       R9 R9 K55 ["join"]
      180 MOVE                             R10 R5
      181 DUPTABLE                         R11 K56 [{"Header"}]
      182 GETUPVAL                         R12 0
      183 GETTABLEKS                       R12 R12 K14 ["createElement"]
      185 LOADK                            R13 K15 ["TextLabel"]
      186 DUPTABLE                         R14 K58 [{["LayoutOrder"] = -1, ["BackgroundTransparency"] = 1, ["Font"], ["TextSize"], ["TextColor3"], ["Size"], ["Text"]}]
      187 GETUPVAL                         R15 4
      188 GETTABLEKS                       R15 R15 K24 ["FONT"]
      190 SETTABLEKS                       R15 R14 K17 ["Font"]
      192 GETUPVAL                         R15 4
      193 GETTABLEKS                       R15 R15 K25 ["FONT_SIZE_MEDIUM"]
      195 SETTABLEKS                       R15 R14 K18 ["TextSize"]
      197 GETTABLEKS                       R15 R6 K26 ["headerTextColor"]
      199 SETTABLEKS                       R15 R14 K19 ["TextColor3"]
      201 GETIMPORT                        R15 K28 [UDim2.new]
      203 LOADN                            R16 0
      204 GETTABLEKS                       R17 R7 K29 ["X"]
      206 LOADN                            R18 0
      207 GETTABLEKS                       R19 R7 K30 ["Y"]
      209 CALL                             R15 4 1
      210 SETTABLEKS                       R15 R14 K20 ["Size"]
      212 SETTABLEKS                       R2 R14 K21 ["Text"]
      214 CALL                             R12 2 1
      215 SETTABLEKS                       R12 R11 K2 ["Header"]
      217 CALL                             R9 2 1
      218 GETUPVAL                         R10 0
      219 GETTABLEKS                       R10 R10 K14 ["createElement"]
      221 GETUPVAL                         R11 5
      222 DUPTABLE                         R12 K61 [{["AutomaticSize"], ["HorizontalAlignment"], ["Layout"], ["LayoutOrder"], ["Padding"] = 6, ["Spacing"], ["VerticalAlignment"], ["ZIndex"]}]
      223 GETIMPORT                        R13 K39 [Enum.AutomaticSize.XY]
      225 SETTABLEKS                       R13 R12 K31 ["AutomaticSize"]
      227 GETIMPORT                        R13 K41 [Enum.HorizontalAlignment.Left]
      229 SETTABLEKS                       R13 R12 K32 ["HorizontalAlignment"]
      231 GETIMPORT                        R13 K44 [Enum.FillDirection.Vertical]
      233 SETTABLEKS                       R13 R12 K33 ["Layout"]
      235 SETTABLEKS                       R3 R12 K3 ["LayoutOrder"]
      237 GETUPVAL                         R14 2
      238 CALL                             R14 0 1
      239 JUMPIFNOT                        R14 ; [+2]
      240 LOADN                            R13 6
      241 JUMP                             ; [+1]
      242 LOADNIL                          R13
      243 SETTABLEKS                       R13 R12 K34 ["Spacing"]
      245 GETIMPORT                        R13 K62 [Enum.VerticalAlignment.Top]
      247 SETTABLEKS                       R13 R12 K60 ["VerticalAlignment"]
      249 SETTABLEKS                       R4 R12 K5 ["ZIndex"]
      251 MOVE                             R13 R9
      252 CALL                             R10 3 -1
      253 RETURN                           R10 -1

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
