PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R0 R0 K1 ["OnSelected"]
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R2 R2 K0 ["props"]
        8 GETTABLEKS                       R2 R2 K3 ["SelectedIndex"]
       10 SUBK                             R1 R2 K2 [1]
       11 CALL                             R0 1 0
       12 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R0 R0 K1 ["OnSelected"]
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R2 R2 K0 ["props"]
        8 GETTABLEKS                       R2 R2 K3 ["SelectedIndex"]
       10 ADDK                             R1 R2 K2 [1]
       11 CALL                             R0 1 0
       12 RETURN                           R0 0

PROTO_2:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          VAL R0
        2 SETTABLEKS                       R1 R0 K0 ["onPrevious"]
        4 NEWCLOSURE                       R1 P1
        5 CAPTURE                          VAL R0
        6 SETTABLEKS                       R1 R0 K1 ["onNext"]
        8 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R0 R0 K1 ["OnSelected"]
        5 GETUPVAL                         R1 1
        6 CALL                             R0 1 0
        7 RETURN                           R0 0

PROTO_4:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Stylizer"]
        4 NEWTABLE                         R3 0 0
        6 LOADN                            R6 1
        7 GETTABLEKS                       R4 R1 K2 ["Count"]
        9 LOADN                            R5 1
       10 FORNPREP                         R4
       11 LOADK                            R8 K3 ["Dot-"]
       12 MOVE                             R9 R6
       13 CONCAT                           R7 R8 R9
       14 GETUPVAL                         R8 0
       15 GETTABLEKS                       R8 R8 K4 ["createElement"]
       17 GETUPVAL                         R9 1
       18 DUPTABLE                         R10 K13 [{["Cursor"] = "PointingHand", ["LayoutOrder"], ["LeftIcon"], ["OnClick"], ["Size"], ["Style"] = "IconOnly"}]
       19 SETTABLEKS                       R6 R10 K7 ["LayoutOrder"]
       21 DUPTABLE                         R11 K14 [{"Style", "Size"}]
       22 DUPTABLE                         R12 K17 [{"Background", "Image"}]
       23 GETTABLEKS                       R14 R1 K18 ["SelectedIndex"]
       25 JUMPIFNOTEQ                      R6 R14 ; [+4]
       27 GETTABLEKS                       R13 R2 K19 ["SelectedColor"]
       29 JUMP                             ; [+2]
       30 GETTABLEKS                       R13 R2 K20 ["DotColor"]
       32 SETTABLEKS                       R13 R12 K15 ["Background"]
       34 GETTABLEKS                       R13 R2 K21 ["DotImage"]
       36 SETTABLEKS                       R13 R12 K16 ["Image"]
       38 SETTABLEKS                       R12 R11 K11 ["Style"]
       40 GETTABLEKS                       R12 R2 K22 ["DotSize"]
       42 SETTABLEKS                       R12 R11 K10 ["Size"]
       44 SETTABLEKS                       R11 R10 K8 ["LeftIcon"]
       46 NEWCLOSURE                       R11 P0
       47 CAPTURE                          VAL R0
       48 CAPTURE                          VAL R6
       49 SETTABLEKS                       R11 R10 K9 ["OnClick"]
       51 GETTABLEKS                       R11 R2 K22 ["DotSize"]
       53 SETTABLEKS                       R11 R10 K10 ["Size"]
       55 CALL                             R8 2 1
       56 SETTABLE                         R8 R3 R7
       57 FORNLOOP                         R4
       58 GETUPVAL                         R4 0
       59 GETTABLEKS                       R4 R4 K4 ["createElement"]
       61 GETUPVAL                         R5 2
       62 DUPTABLE                         R6 K25 [{"AutomaticSize", "Layout", "LayoutOrder", "Size"}]
       63 GETIMPORT                        R7 K28 [Enum.AutomaticSize.Y]
       65 SETTABLEKS                       R7 R6 K23 ["AutomaticSize"]
       67 GETIMPORT                        R7 K31 [Enum.FillDirection.Horizontal]
       69 SETTABLEKS                       R7 R6 K24 ["Layout"]
       71 GETTABLEKS                       R7 R1 K7 ["LayoutOrder"]
       73 SETTABLEKS                       R7 R6 K7 ["LayoutOrder"]
       75 GETIMPORT                        R7 K34 [UDim2.fromScale]
       77 LOADN                            R8 1
       78 LOADN                            R9 0
       79 CALL                             R7 2 1
       80 SETTABLEKS                       R7 R6 K10 ["Size"]
       82 DUPTABLE                         R7 K38 [{"Previous", "Dots", "Next"}]
       83 GETTABLEKS                       R9 R1 K39 ["ShowArrows"]
       85 JUMPIFNOT                        R9 ; [+33]
       86 GETUPVAL                         R8 0
       87 GETTABLEKS                       R8 R8 K4 ["createElement"]
       89 GETUPVAL                         R9 1
       90 DUPTABLE                         R10 K41 [{["Cursor"] = "PointingHand", ["LayoutOrder"] = 1, ["LeftIcon"], ["OnClick"], ["Size"], ["Style"] = "IconOnly"}]
       91 DUPTABLE                         R11 K44 [{["Style"], ["Rotation"] = 180, ["Size"]}]
       92 DUPTABLE                         R12 K17 [{"Background", "Image"}]
       93 GETTABLEKS                       R13 R2 K45 ["ArrowColor"]
       95 SETTABLEKS                       R13 R12 K15 ["Background"]
       97 GETTABLEKS                       R13 R2 K46 ["ArrowImage"]
       99 SETTABLEKS                       R13 R12 K16 ["Image"]
      101 SETTABLEKS                       R12 R11 K11 ["Style"]
      103 GETTABLEKS                       R12 R2 K47 ["ArrowSize"]
      105 SETTABLEKS                       R12 R11 K10 ["Size"]
      107 SETTABLEKS                       R11 R10 K8 ["LeftIcon"]
      109 GETTABLEKS                       R11 R0 K48 ["onPrevious"]
      111 SETTABLEKS                       R11 R10 K9 ["OnClick"]
      113 GETTABLEKS                       R11 R2 K47 ["ArrowSize"]
      115 SETTABLEKS                       R11 R10 K10 ["Size"]
      117 CALL                             R8 2 1
      118 JUMP                             ; [+1]
      119 LOADNIL                          R8
      120 SETTABLEKS                       R8 R7 K35 ["Previous"]
      122 GETUPVAL                         R8 0
      123 GETTABLEKS                       R8 R8 K4 ["createElement"]
      125 GETUPVAL                         R9 2
      126 DUPTABLE                         R10 K53 [{["AutomaticSize"], ["HorizontalAlignment"], ["Layout"], ["LayoutOrder"] = 2, ["Size"], ["Spacing"] = 5}]
      127 GETIMPORT                        R11 K28 [Enum.AutomaticSize.Y]
      129 SETTABLEKS                       R11 R10 K23 ["AutomaticSize"]
      131 GETIMPORT                        R11 K55 [Enum.HorizontalAlignment.Center]
      133 SETTABLEKS                       R11 R10 K49 ["HorizontalAlignment"]
      135 GETIMPORT                        R11 K31 [Enum.FillDirection.Horizontal]
      137 SETTABLEKS                       R11 R10 K24 ["Layout"]
      139 GETIMPORT                        R11 K57 [UDim2.new]
      141 LOADN                            R12 1
      142 GETTABLEKS                       R14 R2 K58 ["DotsInset"]
      144 MINUS                            R13 R14
      145 LOADN                            R14 0
      146 LOADN                            R15 0
      147 CALL                             R11 4 1
      148 SETTABLEKS                       R11 R10 K10 ["Size"]
      150 MOVE                             R11 R3
      151 CALL                             R8 3 1
      152 SETTABLEKS                       R8 R7 K36 ["Dots"]
      154 GETTABLEKS                       R9 R1 K39 ["ShowArrows"]
      156 JUMPIFNOT                        R9 ; [+33]
      157 GETUPVAL                         R8 0
      158 GETTABLEKS                       R8 R8 K4 ["createElement"]
      160 GETUPVAL                         R9 1
      161 DUPTABLE                         R10 K60 [{["Cursor"] = "PointingHand", ["LayoutOrder"] = 3, ["LeftIcon"], ["OnClick"], ["Size"], ["Style"] = "IconOnly"}]
      162 DUPTABLE                         R11 K14 [{"Style", "Size"}]
      163 DUPTABLE                         R12 K17 [{"Background", "Image"}]
      164 GETTABLEKS                       R13 R2 K45 ["ArrowColor"]
      166 SETTABLEKS                       R13 R12 K15 ["Background"]
      168 GETTABLEKS                       R13 R2 K46 ["ArrowImage"]
      170 SETTABLEKS                       R13 R12 K16 ["Image"]
      172 SETTABLEKS                       R12 R11 K11 ["Style"]
      174 GETTABLEKS                       R12 R2 K47 ["ArrowSize"]
      176 SETTABLEKS                       R12 R11 K10 ["Size"]
      178 SETTABLEKS                       R11 R10 K8 ["LeftIcon"]
      180 GETTABLEKS                       R11 R0 K61 ["onNext"]
      182 SETTABLEKS                       R11 R10 K9 ["OnClick"]
      184 GETTABLEKS                       R11 R2 K47 ["ArrowSize"]
      186 SETTABLEKS                       R11 R10 K10 ["Size"]
      188 CALL                             R8 2 1
      189 JUMP                             ; [+1]
      190 LOADNIL                          R8
      191 SETTABLEKS                       R8 R7 K37 ["Next"]
      193 CALL                             R4 3 -1
      194 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["UI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R0 R0 K4 ["Parent"]
        9 GETIMPORT                        R1 K6 [require]
       11 GETTABLEKS                       R2 R0 K2 ["UI"]
       13 GETTABLEKS                       R2 R2 K7 ["ContextServices"]
       15 CALL                             R1 1 1
       16 GETTABLEKS                       R2 R1 K8 ["withContext"]
       18 GETIMPORT                        R3 K6 [require]
       20 GETTABLEKS                       R4 R0 K4 ["Parent"]
       22 GETTABLEKS                       R4 R4 K9 ["Roact"]
       24 CALL                             R3 1 1
       25 GETIMPORT                        R4 K6 [require]
       27 GETTABLEKS                       R5 R0 K10 ["Util"]
       29 GETTABLEKS                       R5 R5 K11 ["Typecheck"]
       31 CALL                             R4 1 1
       32 GETIMPORT                        R5 K6 [require]
       34 GETTABLEKS                       R6 R0 K2 ["UI"]
       36 GETTABLEKS                       R6 R6 K12 ["Components"]
       38 GETTABLEKS                       R6 R6 K13 ["Pane"]
       40 CALL                             R5 1 1
       41 GETIMPORT                        R6 K6 [require]
       43 GETTABLEKS                       R7 R0 K2 ["UI"]
       45 GETTABLEKS                       R7 R7 K12 ["Components"]
       47 GETTABLEKS                       R7 R7 K14 ["IconButton"]
       49 CALL                             R6 1 1
       50 GETTABLEKS                       R7 R3 K15 ["PureComponent"]
       52 LOADK                            R9 K16 ["PaginationDots"]
       53 NAMECALL                         R7 R7 K17 ["extend"]
       55 CALL                             R7 2 1
       56 GETTABLEKS                       R8 R4 K18 ["wrap"]
       58 MOVE                             R9 R7
       59 GETIMPORT                        R10 K1 [script]
       61 CALL                             R8 2 0
       62 DUPCLOSURE                       R8 K19 [PROTO_2]
       63 SETTABLEKS                       R8 R7 K20 ["init"]
       65 DUPCLOSURE                       R8 K21 [PROTO_4]
       66 CAPTURE                          VAL R3
       67 CAPTURE                          VAL R6
       68 CAPTURE                          VAL R5
       69 SETTABLEKS                       R8 R7 K22 ["render"]
       71 MOVE                             R8 R2
       72 DUPTABLE                         R9 K24 [{"Stylizer"}]
       73 GETTABLEKS                       R10 R1 K23 ["Stylizer"]
       75 SETTABLEKS                       R10 R9 K23 ["Stylizer"]
       77 CALL                             R8 1 1
       78 MOVE                             R9 R7
       79 CALL                             R8 1 1
       80 MOVE                             R7 R8
       81 RETURN                           R7 1
