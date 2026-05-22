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
       18 DUPTABLE                         R10 K11 [{"Cursor", "LayoutOrder", "LeftIcon", "OnClick", "Size", "Style"}]
       19 LOADK                            R11 K12 ["PointingHand"]
       20 SETTABLEKS                       R11 R10 K5 ["Cursor"]
       22 SETTABLEKS                       R6 R10 K6 ["LayoutOrder"]
       24 DUPTABLE                         R11 K13 [{"Style", "Size"}]
       25 DUPTABLE                         R12 K16 [{"Background", "Image"}]
       26 GETTABLEKS                       R14 R1 K17 ["SelectedIndex"]
       28 JUMPIFNOTEQ                      R6 R14 ; [+4]
       30 GETTABLEKS                       R13 R2 K18 ["SelectedColor"]
       32 JUMP                             ; [+2]
       33 GETTABLEKS                       R13 R2 K19 ["DotColor"]
       35 SETTABLEKS                       R13 R12 K14 ["Background"]
       37 GETTABLEKS                       R13 R2 K20 ["DotImage"]
       39 SETTABLEKS                       R13 R12 K15 ["Image"]
       41 SETTABLEKS                       R12 R11 K10 ["Style"]
       43 GETTABLEKS                       R12 R2 K21 ["DotSize"]
       45 SETTABLEKS                       R12 R11 K9 ["Size"]
       47 SETTABLEKS                       R11 R10 K7 ["LeftIcon"]
       49 NEWCLOSURE                       R11 P0
       50 CAPTURE                          VAL R0
       51 CAPTURE                          VAL R6
       52 SETTABLEKS                       R11 R10 K8 ["OnClick"]
       54 GETTABLEKS                       R11 R2 K21 ["DotSize"]
       56 SETTABLEKS                       R11 R10 K9 ["Size"]
       58 LOADK                            R11 K22 ["IconOnly"]
       59 SETTABLEKS                       R11 R10 K10 ["Style"]
       61 CALL                             R8 2 1
       62 SETTABLE                         R8 R3 R7
       63 FORNLOOP                         R4
       64 GETUPVAL                         R4 0
       65 GETTABLEKS                       R4 R4 K4 ["createElement"]
       67 GETUPVAL                         R5 2
       68 DUPTABLE                         R6 K25 [{"AutomaticSize", "Layout", "LayoutOrder", "Size"}]
       69 GETIMPORT                        R7 K28 [Enum.AutomaticSize.Y]
       71 SETTABLEKS                       R7 R6 K23 ["AutomaticSize"]
       73 GETIMPORT                        R7 K31 [Enum.FillDirection.Horizontal]
       75 SETTABLEKS                       R7 R6 K24 ["Layout"]
       77 GETTABLEKS                       R7 R1 K6 ["LayoutOrder"]
       79 SETTABLEKS                       R7 R6 K6 ["LayoutOrder"]
       81 GETIMPORT                        R7 K34 [UDim2.fromScale]
       83 LOADN                            R8 1
       84 LOADN                            R9 0
       85 CALL                             R7 2 1
       86 SETTABLEKS                       R7 R6 K9 ["Size"]
       88 DUPTABLE                         R7 K38 [{"Previous", "Dots", "Next"}]
       89 GETTABLEKS                       R9 R1 K39 ["ShowArrows"]
       91 JUMPIFNOT                        R9 ; [+45]
       92 GETUPVAL                         R8 0
       93 GETTABLEKS                       R8 R8 K4 ["createElement"]
       95 GETUPVAL                         R9 1
       96 DUPTABLE                         R10 K11 [{"Cursor", "LayoutOrder", "LeftIcon", "OnClick", "Size", "Style"}]
       97 LOADK                            R11 K12 ["PointingHand"]
       98 SETTABLEKS                       R11 R10 K5 ["Cursor"]
      100 LOADN                            R11 1
      101 SETTABLEKS                       R11 R10 K6 ["LayoutOrder"]
      103 DUPTABLE                         R11 K41 [{"Style", "Rotation", "Size"}]
      104 DUPTABLE                         R12 K16 [{"Background", "Image"}]
      105 GETTABLEKS                       R13 R2 K42 ["ArrowColor"]
      107 SETTABLEKS                       R13 R12 K14 ["Background"]
      109 GETTABLEKS                       R13 R2 K43 ["ArrowImage"]
      111 SETTABLEKS                       R13 R12 K15 ["Image"]
      113 SETTABLEKS                       R12 R11 K10 ["Style"]
      115 LOADN                            R12 180
      116 SETTABLEKS                       R12 R11 K40 ["Rotation"]
      118 GETTABLEKS                       R12 R2 K44 ["ArrowSize"]
      120 SETTABLEKS                       R12 R11 K9 ["Size"]
      122 SETTABLEKS                       R11 R10 K7 ["LeftIcon"]
      124 GETTABLEKS                       R11 R0 K45 ["onPrevious"]
      126 SETTABLEKS                       R11 R10 K8 ["OnClick"]
      128 GETTABLEKS                       R11 R2 K44 ["ArrowSize"]
      130 SETTABLEKS                       R11 R10 K9 ["Size"]
      132 LOADK                            R11 K22 ["IconOnly"]
      133 SETTABLEKS                       R11 R10 K10 ["Style"]
      135 CALL                             R8 2 1
      136 JUMP                             ; [+1]
      137 LOADNIL                          R8
      138 SETTABLEKS                       R8 R7 K35 ["Previous"]
      140 GETUPVAL                         R8 0
      141 GETTABLEKS                       R8 R8 K4 ["createElement"]
      143 GETUPVAL                         R9 2
      144 DUPTABLE                         R10 K48 [{"AutomaticSize", "HorizontalAlignment", "Layout", "LayoutOrder", "Size", "Spacing"}]
      145 GETIMPORT                        R11 K28 [Enum.AutomaticSize.Y]
      147 SETTABLEKS                       R11 R10 K23 ["AutomaticSize"]
      149 GETIMPORT                        R11 K50 [Enum.HorizontalAlignment.Center]
      151 SETTABLEKS                       R11 R10 K46 ["HorizontalAlignment"]
      153 GETIMPORT                        R11 K31 [Enum.FillDirection.Horizontal]
      155 SETTABLEKS                       R11 R10 K24 ["Layout"]
      157 LOADN                            R11 2
      158 SETTABLEKS                       R11 R10 K6 ["LayoutOrder"]
      160 GETIMPORT                        R11 K52 [UDim2.new]
      162 LOADN                            R12 1
      163 GETTABLEKS                       R14 R2 K53 ["DotsInset"]
      165 MINUS                            R13 R14
      166 LOADN                            R14 0
      167 LOADN                            R15 0
      168 CALL                             R11 4 1
      169 SETTABLEKS                       R11 R10 K9 ["Size"]
      171 LOADN                            R11 5
      172 SETTABLEKS                       R11 R10 K47 ["Spacing"]
      174 MOVE                             R11 R3
      175 CALL                             R8 3 1
      176 SETTABLEKS                       R8 R7 K36 ["Dots"]
      178 GETTABLEKS                       R9 R1 K39 ["ShowArrows"]
      180 JUMPIFNOT                        R9 ; [+42]
      181 GETUPVAL                         R8 0
      182 GETTABLEKS                       R8 R8 K4 ["createElement"]
      184 GETUPVAL                         R9 1
      185 DUPTABLE                         R10 K11 [{"Cursor", "LayoutOrder", "LeftIcon", "OnClick", "Size", "Style"}]
      186 LOADK                            R11 K12 ["PointingHand"]
      187 SETTABLEKS                       R11 R10 K5 ["Cursor"]
      189 LOADN                            R11 3
      190 SETTABLEKS                       R11 R10 K6 ["LayoutOrder"]
      192 DUPTABLE                         R11 K13 [{"Style", "Size"}]
      193 DUPTABLE                         R12 K16 [{"Background", "Image"}]
      194 GETTABLEKS                       R13 R2 K42 ["ArrowColor"]
      196 SETTABLEKS                       R13 R12 K14 ["Background"]
      198 GETTABLEKS                       R13 R2 K43 ["ArrowImage"]
      200 SETTABLEKS                       R13 R12 K15 ["Image"]
      202 SETTABLEKS                       R12 R11 K10 ["Style"]
      204 GETTABLEKS                       R12 R2 K44 ["ArrowSize"]
      206 SETTABLEKS                       R12 R11 K9 ["Size"]
      208 SETTABLEKS                       R11 R10 K7 ["LeftIcon"]
      210 GETTABLEKS                       R11 R0 K54 ["onNext"]
      212 SETTABLEKS                       R11 R10 K8 ["OnClick"]
      214 GETTABLEKS                       R11 R2 K44 ["ArrowSize"]
      216 SETTABLEKS                       R11 R10 K9 ["Size"]
      218 LOADK                            R11 K22 ["IconOnly"]
      219 SETTABLEKS                       R11 R10 K10 ["Style"]
      221 CALL                             R8 2 1
      222 JUMP                             ; [+1]
      223 LOADNIL                          R8
      224 SETTABLEKS                       R8 R7 K37 ["Next"]
      226 CALL                             R4 3 -1
      227 RETURN                           R4 -1

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
