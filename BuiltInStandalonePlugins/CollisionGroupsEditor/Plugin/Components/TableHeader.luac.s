PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R3 R1 K1 ["Stylizer"]
        4 GETTABLEKS                       R2 R3 K2 ["TableHeader"]
        6 NEWTABLE                         R3 0 0
        8 GETIMPORT                        R4 K4 [ipairs]
       10 GETTABLEKS                       R5 R1 K5 ["Groups"]
       12 CALL                             R4 1 3
       13 FORGPREP_INEXT                   R4
       14 GETTABLEKS                       R9 R8 K6 ["Name"]
       16 GETTABLEKS                       R10 R8 K6 ["Name"]
       18 GETUPVAL                         R12 0
       19 GETTABLEKS                       R11 R12 K7 ["createElement"]
       21 GETUPVAL                         R12 1
       22 DUPTABLE                         R13 K12 [{"Size", "Style", "StyleModifier", "LayoutOrder"}]
       23 GETUPVAL                         R15 2
       24 GETTABLEKS                       R14 R15 K13 ["GridHeaderLabelSize"]
       26 SETTABLEKS                       R14 R13 K8 ["Size"]
       28 LOADK                            R14 K14 ["GroupLabel"]
       29 SETTABLEKS                       R14 R13 K9 ["Style"]
       31 GETTABLEKS                       R15 R8 K6 ["Name"]
       33 GETTABLEKS                       R16 R1 K15 ["ColHovered"]
       35 JUMPIFNOTEQ                      R15 R16 ; [+5]
       37 GETUPVAL                         R15 3
       38 GETTABLEKS                       R14 R15 K16 ["Hover"]
       40 JUMP                             ; [+1]
       41 LOADNIL                          R14
       42 SETTABLEKS                       R14 R13 K10 ["StyleModifier"]
       44 GETTABLEKS                       R16 R1 K5 ["Groups"]
       46 LENGTH                           R15 R16
       47 SUB                              R14 R15 R7
       48 SETTABLEKS                       R14 R13 K11 ["LayoutOrder"]
       50 DUPTABLE                         R14 K18 [{"TextLabel"}]
       51 GETUPVAL                         R16 0
       52 GETTABLEKS                       R15 R16 K7 ["createElement"]
       54 GETUPVAL                         R16 4
       55 DUPTABLE                         R17 K22 [{"Style", "TextWrapped", "TextTruncate", "Size", "Text"}]
       56 LOADK                            R18 K14 ["GroupLabel"]
       57 SETTABLEKS                       R18 R17 K9 ["Style"]
       59 LOADB                            R18 1
       60 SETTABLEKS                       R18 R17 K19 ["TextWrapped"]
       62 GETIMPORT                        R18 K25 [Enum.TextTruncate.AtEnd]
       64 SETTABLEKS                       R18 R17 K20 ["TextTruncate"]
       66 GETIMPORT                        R18 K28 [UDim2.new]
       68 LOADN                            R19 1
       69 LOADN                            R20 0
       70 LOADN                            R21 1
       71 LOADN                            R22 0
       72 CALL                             R18 4 1
       73 SETTABLEKS                       R18 R17 K8 ["Size"]
       75 SETTABLEKS                       R9 R17 K21 ["Text"]
       77 CALL                             R15 2 1
       78 SETTABLEKS                       R15 R14 K17 ["TextLabel"]
       80 CALL                             R11 3 1
       81 SETTABLE                         R11 R3 R10
       82 FORGLOOP                         R4 2 [inext] ; [-69]
       84 GETUPVAL                         R5 0
       85 GETTABLEKS                       R4 R5 K7 ["createElement"]
       87 GETUPVAL                         R5 1
       88 DUPTABLE                         R6 K32 [{"Size", "LayoutOrder", "Layout", "Padding", "Spacing"}]
       89 GETIMPORT                        R7 K28 [UDim2.new]
       91 LOADN                            R8 1
       92 LOADN                            R9 0
       93 LOADN                            R10 0
       94 GETUPVAL                         R12 2
       95 GETTABLEKS                       R11 R12 K33 ["GroupRowHeight"]
       97 CALL                             R7 4 1
       98 SETTABLEKS                       R7 R6 K8 ["Size"]
      100 GETTABLEKS                       R7 R1 K11 ["LayoutOrder"]
      102 SETTABLEKS                       R7 R6 K11 ["LayoutOrder"]
      104 GETIMPORT                        R7 K36 [Enum.FillDirection.Horizontal]
      106 SETTABLEKS                       R7 R6 K29 ["Layout"]
      108 GETTABLEKS                       R7 R2 K30 ["Padding"]
      110 SETTABLEKS                       R7 R6 K30 ["Padding"]
      112 LOADN                            R7 255
      113 SETTABLEKS                       R7 R6 K31 ["Spacing"]
      115 DUPTABLE                         R7 K39 [{"GroupCountDisplay", "Headers"}]
      116 GETUPVAL                         R9 0
      117 GETTABLEKS                       R8 R9 K7 ["createElement"]
      119 GETUPVAL                         R9 5
      120 DUPTABLE                         R10 K41 [{"GroupCount", "LayoutOrder"}]
      121 GETTABLEKS                       R12 R1 K5 ["Groups"]
      123 LENGTH                           R11 R12
      124 SETTABLEKS                       R11 R10 K40 ["GroupCount"]
      126 LOADN                            R11 1
      127 SETTABLEKS                       R11 R10 K11 ["LayoutOrder"]
      129 CALL                             R8 2 1
      130 SETTABLEKS                       R8 R7 K37 ["GroupCountDisplay"]
      132 GETUPVAL                         R9 0
      133 GETTABLEKS                       R8 R9 K7 ["createElement"]
      135 GETUPVAL                         R9 6
      136 DUPTABLE                         R10 K47 [{"Size", "AutomaticCanvasSize", "CanvasPosition", "ScrollingDirection", "Layout", "Padding", "LayoutOrder", "ScrollBarThickness", "ScrollingEnabled"}]
      137 GETTABLEKS                       R11 R2 K48 ["ScrollingFrameSize"]
      139 SETTABLEKS                       R11 R10 K8 ["Size"]
      141 GETIMPORT                        R11 K51 [Enum.AutomaticSize.XY]
      143 SETTABLEKS                       R11 R10 K42 ["AutomaticCanvasSize"]
      145 GETIMPORT                        R11 K53 [Vector2.new]
      147 GETTABLEKS                       R12 R1 K54 ["ScrollPositionX"]
      149 LOADN                            R13 0
      150 CALL                             R11 2 1
      151 SETTABLEKS                       R11 R10 K43 ["CanvasPosition"]
      153 GETIMPORT                        R11 K56 [Enum.ScrollingDirection.X]
      155 SETTABLEKS                       R11 R10 K44 ["ScrollingDirection"]
      157 GETIMPORT                        R11 K36 [Enum.FillDirection.Horizontal]
      159 SETTABLEKS                       R11 R10 K29 ["Layout"]
      161 GETTABLEKS                       R11 R2 K57 ["ScrollingFramePadding"]
      163 SETTABLEKS                       R11 R10 K30 ["Padding"]
      165 LOADN                            R11 2
      166 SETTABLEKS                       R11 R10 K11 ["LayoutOrder"]
      168 LOADN                            R11 0
      169 SETTABLEKS                       R11 R10 K45 ["ScrollBarThickness"]
      171 LOADB                            R11 0
      172 SETTABLEKS                       R11 R10 K46 ["ScrollingEnabled"]
      174 MOVE                             R11 R3
      175 CALL                             R8 3 1
      176 SETTABLEKS                       R8 R7 K38 ["Headers"]
      178 CALL                             R4 3 -1
      179 RETURN                           R4 -1

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
       25 GETTABLEKS                       R4 R2 K9 ["UI"]
       27 GETTABLEKS                       R5 R4 K10 ["Pane"]
       29 GETTABLEKS                       R6 R4 K11 ["ScrollingFrame"]
       31 GETTABLEKS                       R7 R4 K12 ["TextLabel"]
       33 GETTABLEKS                       R9 R2 K13 ["Util"]
       35 GETTABLEKS                       R8 R9 K14 ["StyleModifier"]
       37 GETIMPORT                        R9 K4 [require]
       39 GETIMPORT                        R13 K1 [script]
       41 GETTABLEKS                       R12 R13 K2 ["Parent"]
       43 GETTABLEKS                       R11 R12 K2 ["Parent"]
       45 GETTABLEKS                       R10 R11 K15 ["Constants"]
       47 CALL                             R9 1 1
       48 GETIMPORT                        R10 K4 [require]
       50 GETIMPORT                        R13 K1 [script]
       52 GETTABLEKS                       R12 R13 K2 ["Parent"]
       54 GETTABLEKS                       R11 R12 K16 ["GroupCountDisplay"]
       56 CALL                             R10 1 1
       57 GETTABLEKS                       R11 R1 K17 ["Component"]
       59 LOADK                            R13 K18 ["TableHeader"]
       60 NAMECALL                         R11 R11 K19 ["extend"]
       62 CALL                             R11 2 1
       63 DUPCLOSURE                       R12 K20 [PROTO_0]
       64 CAPTURE                          VAL R1
       65 CAPTURE                          VAL R5
       66 CAPTURE                          VAL R9
       67 CAPTURE                          VAL R8
       68 CAPTURE                          VAL R7
       69 CAPTURE                          VAL R10
       70 CAPTURE                          VAL R6
       71 SETTABLEKS                       R12 R11 K21 ["render"]
       73 GETTABLEKS                       R12 R3 K22 ["withContext"]
       75 DUPTABLE                         R13 K24 [{"Stylizer"}]
       76 GETTABLEKS                       R14 R3 K23 ["Stylizer"]
       78 SETTABLEKS                       R14 R13 K23 ["Stylizer"]
       80 CALL                             R12 1 1
       81 MOVE                             R13 R11
       82 CALL                             R12 1 1
       83 MOVE                             R11 R12
       84 RETURN                           R11 1
