PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Stylizer"]
        4 LOADNIL                          R3
        5 GETTABLEKS                       R4 R1 K2 ["Name"]
        7 JUMPIFNOT                        R4 ; [+152]
        8 GETTABLEKS                       R4 R1 K2 ["Name"]
       10 LOADK                            R6 K3 ["^rbxassetid://"]
       11 NAMECALL                         R4 R4 K4 ["find"]
       13 CALL                             R4 2 1
       14 JUMPIF                           R4 ; [+7]
       15 GETTABLEKS                       R4 R1 K2 ["Name"]
       17 LOADK                            R6 K5 ["^rbxasset://"]
       18 NAMECALL                         R4 R4 K4 ["find"]
       20 CALL                             R4 2 1
       21 JUMPIFNOT                        R4 ; [+32]
       22 GETUPVAL                         R4 0
       23 GETTABLEKS                       R4 R4 K6 ["createElement"]
       25 GETUPVAL                         R5 1
       26 DUPTABLE                         R6 K10 [{"Size", "Image", "ImageColor3"}]
       27 GETIMPORT                        R7 K13 [UDim2.fromScale]
       29 LOADN                            R8 1
       30 LOADN                            R9 1
       31 CALL                             R7 2 1
       32 SETTABLEKS                       R7 R6 K7 ["Size"]
       34 GETTABLEKS                       R7 R1 K2 ["Name"]
       36 SETTABLEKS                       R7 R6 K8 ["Image"]
       38 GETTABLEKS                       R8 R1 K2 ["Name"]
       40 LOADK                            R10 K5 ["^rbxasset://"]
       41 NAMECALL                         R8 R8 K4 ["find"]
       43 CALL                             R8 2 1
       44 JUMPIFNOT                        R8 ; [+3]
       45 GETTABLEKS                       R7 R2 K14 ["IconColor"]
       47 JUMP                             ; [+1]
       48 LOADNIL                          R7
       49 SETTABLEKS                       R7 R6 K9 ["ImageColor3"]
       51 CALL                             R4 2 1
       52 MOVE                             R3 R4
       53 JUMP                             ; [+106]
       54 GETTABLEKS                       R4 R1 K2 ["Name"]
       56 LOADK                            R6 K15 ["emoji:"]
       57 NAMECALL                         R4 R4 K4 ["find"]
       59 CALL                             R4 2 1
       60 JUMPIFNOT                        R4 ; [+46]
       61 GETTABLEKS                       R4 R1 K2 ["Name"]
       63 LOADK                            R6 K15 ["emoji:"]
       64 NAMECALL                         R4 R4 K4 ["find"]
       66 CALL                             R4 2 2
       67 GETTABLEKS                       R6 R1 K2 ["Name"]
       69 ADDK                             R8 R5 K16 [1]
       70 LOADN                            R9 -1
       71 NAMECALL                         R6 R6 K17 ["sub"]
       73 CALL                             R6 3 1
       74 GETUPVAL                         R7 2
       75 GETTABLEKS                       R7 R7 K18 ["getNamedEmoji"]
       77 MOVE                             R8 R6
       78 CALL                             R7 1 1
       79 JUMPIF                           R7 ; [+7]
       80 LOADK                            R10 K19 ["^[a-zA-Z%-_]+$"]
       81 NAMECALL                         R8 R6 K20 ["match"]
       83 CALL                             R8 2 1
       84 JUMPIF                           R8 ; [+2]
       85 MOVE                             R7 R6
       86 JUMP                             ; [+2]
       87 JUMPIF                           R7 ; [+1]
       88 LOADK                            R7 K21 ["❌"]
       89 GETUPVAL                         R8 0
       90 GETTABLEKS                       R8 R8 K6 ["createElement"]
       92 GETUPVAL                         R9 3
       93 DUPTABLE                         R10 K24 [{"TextSize", "Text", "Size"}]
       94 GETTABLEKS                       R11 R2 K22 ["TextSize"]
       96 SETTABLEKS                       R11 R10 K22 ["TextSize"]
       98 SETTABLEKS                       R7 R10 K23 ["Text"]
      100 GETTABLEKS                       R11 R2 K7 ["Size"]
      102 SETTABLEKS                       R11 R10 K7 ["Size"]
      104 CALL                             R8 2 1
      105 MOVE                             R3 R8
      106 JUMP                             ; [+53]
      107 GETUPVAL                         R4 4
      108 GETTABLEKS                       R4 R4 K25 ["Lookup"]
      110 GETTABLEKS                       R5 R1 K2 ["Name"]
      112 CALL                             R4 1 1
      113 JUMPIF                           R4 ; [+5]
      114 GETUPVAL                         R4 4
      115 GETTABLEKS                       R4 R4 K25 ["Lookup"]
      117 LOADK                            R5 K26 ["computer_error"]
      118 CALL                             R4 1 1
      119 GETUPVAL                         R5 0
      120 GETTABLEKS                       R5 R5 K6 ["createElement"]
      122 GETUPVAL                         R6 1
      123 DUPTABLE                         R7 K28 [{"Size", "Image", "Style"}]
      124 GETIMPORT                        R8 K13 [UDim2.fromScale]
      126 LOADN                            R9 1
      127 LOADN                            R10 1
      128 CALL                             R8 2 1
      129 SETTABLEKS                       R8 R7 K7 ["Size"]
      131 GETTABLEKS                       R8 R4 K8 ["Image"]
      133 SETTABLEKS                       R8 R7 K8 ["Image"]
      135 DUPTABLE                         R8 K31 [{"ImageRectSize", "ImageRectOffset"}]
      136 GETTABLEKS                       R10 R4 K29 ["ImageRectSize"]
      138 GETIMPORT                        R11 K34 [Vector2.new]
      140 LOADK                            R12 K35 [0.5]
      141 LOADK                            R13 K35 [0.5]
      142 CALL                             R11 2 1
      143 SUB                              R9 R10 R11
      144 SETTABLEKS                       R9 R8 K29 ["ImageRectSize"]
      146 GETTABLEKS                       R10 R4 K30 ["ImageRectOffset"]
      148 GETIMPORT                        R11 K34 [Vector2.new]
      150 LOADK                            R12 K36 [0.25]
      151 LOADK                            R13 K36 [0.25]
      152 CALL                             R11 2 1
      153 ADD                              R9 R10 R11
      154 SETTABLEKS                       R9 R8 K30 ["ImageRectOffset"]
      156 SETTABLEKS                       R8 R7 K27 ["Style"]
      158 CALL                             R5 2 1
      159 MOVE                             R3 R5
      160 GETUPVAL                         R4 0
      161 GETTABLEKS                       R4 R4 K6 ["createElement"]
      163 GETUPVAL                         R5 5
      164 NEWTABLE                         R6 16 0
      166 GETIMPORT                        R7 K40 [Enum.HorizontalAlignment.Center]
      168 SETTABLEKS                       R7 R6 K38 ["HorizontalAlignment"]
      170 GETIMPORT                        R7 K43 [Enum.FillDirection.Horizontal]
      172 SETTABLEKS                       R7 R6 K44 ["Layout"]
      174 GETTABLEKS                       R7 R1 K45 ["LayoutOrder"]
      176 SETTABLEKS                       R7 R6 K45 ["LayoutOrder"]
      178 GETTABLEKS                       R7 R1 K46 ["OnClick"]
      180 SETTABLEKS                       R7 R6 K46 ["OnClick"]
      182 GETTABLEKS                       R7 R2 K47 ["Padding"]
      184 SETTABLEKS                       R7 R6 K47 ["Padding"]
      186 GETTABLEKS                       R7 R1 K48 ["Position"]
      188 SETTABLEKS                       R7 R6 K48 ["Position"]
      190 GETUPVAL                         R7 6
      191 GETTABLEKS                       R8 R1 K7 ["Size"]
      193 GETTABLEKS                       R9 R2 K7 ["Size"]
      195 CALL                             R7 2 1
      196 SETTABLEKS                       R7 R6 K7 ["Size"]
      198 GETIMPORT                        R7 K50 [Enum.VerticalAlignment.Center]
      200 SETTABLEKS                       R7 R6 K49 ["VerticalAlignment"]
      202 GETUPVAL                         R7 0
      203 GETTABLEKS                       R7 R7 K51 ["Event"]
      205 GETTABLEKS                       R7 R7 K52 ["MouseEnter"]
      207 GETTABLEKS                       R8 R1 K53 ["OnMouseEnter"]
      209 SETTABLE                         R8 R6 R7
      210 GETUPVAL                         R7 0
      211 GETTABLEKS                       R7 R7 K51 ["Event"]
      213 GETTABLEKS                       R7 R7 K54 ["MouseLeave"]
      215 GETTABLEKS                       R8 R1 K55 ["OnMouseLeave"]
      217 SETTABLE                         R8 R6 R7
      218 DUPTABLE                         R7 K57 [{"ChildDecoration"}]
      219 SETTABLEKS                       R3 R7 K56 ["ChildDecoration"]
      221 CALL                             R4 3 -1
      222 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Src"]
       13 GETTABLEKS                       R2 R2 K6 ["Types"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R3 R0 K7 ["Packages"]
       20 GETTABLEKS                       R3 R3 K8 ["Roact"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K4 [require]
       25 GETTABLEKS                       R4 R0 K7 ["Packages"]
       27 GETTABLEKS                       R4 R4 K9 ["Framework"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K4 [require]
       32 GETTABLEKS                       R5 R0 K7 ["Packages"]
       34 GETTABLEKS                       R5 R5 K10 ["Emoji"]
       36 CALL                             R4 1 1
       37 GETTABLEKS                       R5 R3 K11 ["ContextServices"]
       39 GETTABLEKS                       R6 R5 K12 ["withContext"]
       41 GETTABLEKS                       R7 R5 K13 ["Analytics"]
       43 GETTABLEKS                       R8 R3 K14 ["Style"]
       45 GETTABLEKS                       R8 R8 K15 ["Stylizer"]
       47 GETTABLEKS                       R9 R3 K16 ["UI"]
       49 GETTABLEKS                       R10 R9 K17 ["Pane"]
       51 GETTABLEKS                       R11 R9 K18 ["Image"]
       53 GETTABLEKS                       R12 R9 K19 ["TextLabel"]
       55 GETTABLEKS                       R13 R3 K20 ["Util"]
       57 GETTABLEKS                       R13 R13 K21 ["prioritize"]
       59 GETIMPORT                        R14 K4 [require]
       61 GETTABLEKS                       R15 R0 K5 ["Src"]
       63 GETTABLEKS                       R15 R15 K22 ["FamFamFam"]
       65 CALL                             R14 1 1
       66 GETTABLEKS                       R15 R2 K23 ["PureComponent"]
       68 LOADK                            R17 K24 ["Icon"]
       69 NAMECALL                         R15 R15 K25 ["extend"]
       71 CALL                             R15 2 1
       72 DUPCLOSURE                       R16 K26 [PROTO_0]
       73 CAPTURE                          VAL R2
       74 CAPTURE                          VAL R11
       75 CAPTURE                          VAL R4
       76 CAPTURE                          VAL R12
       77 CAPTURE                          VAL R14
       78 CAPTURE                          VAL R10
       79 CAPTURE                          VAL R13
       80 SETTABLEKS                       R16 R15 K27 ["render"]
       82 MOVE                             R16 R6
       83 DUPTABLE                         R17 K28 [{"Analytics", "Stylizer"}]
       84 SETTABLEKS                       R7 R17 K13 ["Analytics"]
       86 SETTABLEKS                       R8 R17 K15 ["Stylizer"]
       88 CALL                             R16 1 1
       89 MOVE                             R17 R15
       90 CALL                             R16 1 1
       91 MOVE                             R15 R16
       92 RETURN                           R15 1
