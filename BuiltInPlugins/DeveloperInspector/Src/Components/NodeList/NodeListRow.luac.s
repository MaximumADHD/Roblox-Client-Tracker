PROTO_0:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K1 [{"isHovering"}]
        2 LOADB                            R3 1
        3 SETTABLEKS                       R3 R2 K0 ["isHovering"]
        5 NAMECALL                         R0 R0 K2 ["setState"]
        7 CALL                             R0 2 0
        8 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K1 [{"isHovering"}]
        2 LOADB                            R3 0
        3 SETTABLEKS                       R3 R2 K0 ["isHovering"]
        5 NAMECALL                         R0 R0 K2 ["setState"]
        7 CALL                             R0 2 0
        8 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R2 R1 K0 ["UserInputType"]
        2 GETIMPORT                        R3 K3 [Enum.UserInputType.MouseButton1]
        4 JUMPIFNOTEQ                      R2 R3 ; [+12]
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R2 R2 K4 ["props"]
        9 GETTABLEKS                       R2 R2 K5 ["OnSelect"]
       11 GETUPVAL                         R3 0
       12 GETTABLEKS                       R3 R3 K4 ["props"]
       14 GETTABLEKS                       R3 R3 K6 ["Index"]
       16 CALL                             R2 1 0
       17 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R0 R0 K1 ["OnClickLink"]
        5 GETUPVAL                         R1 0
        6 GETTABLEKS                       R1 R1 K0 ["props"]
        8 GETTABLEKS                       R1 R1 K2 ["Index"]
       10 CALL                             R0 1 0
       11 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createRef"]
        3 CALL                             R1 0 1
        4 SETTABLEKS                       R1 R0 K1 ["containerRef"]
        6 DUPTABLE                         R1 K3 [{"isHovering"}]
        7 LOADB                            R2 0
        8 SETTABLEKS                       R2 R1 K2 ["isHovering"]
       10 SETTABLEKS                       R1 R0 K4 ["state"]
       12 NEWCLOSURE                       R1 P0
       13 CAPTURE                          VAL R0
       14 SETTABLEKS                       R1 R0 K5 ["onMouseEnter"]
       16 NEWCLOSURE                       R1 P1
       17 CAPTURE                          VAL R0
       18 SETTABLEKS                       R1 R0 K6 ["onMouseLeave"]
       20 NEWCLOSURE                       R1 P2
       21 CAPTURE                          VAL R0
       22 SETTABLEKS                       R1 R0 K7 ["onInputBegan"]
       24 NEWCLOSURE                       R1 P3
       25 CAPTURE                          VAL R0
       26 SETTABLEKS                       R1 R0 K8 ["onClick"]
       28 RETURN                           R0 0

PROTO_5:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R1 R1 K1 ["Flash"]
        4 JUMPIFNOT                        R1 ; [+9]
        5 GETTABLEKS                       R3 R0 K0 ["props"]
        7 GETTABLEKS                       R3 R3 K1 ["Flash"]
        9 GETTABLEKS                       R3 R3 K2 ["heat"]
       11 NAMECALL                         R1 R0 K3 ["flash"]
       13 CALL                             R1 2 0
       14 RETURN                           R0 0

PROTO_6:
        0 GETTABLEKS                       R2 R0 K0 ["containerRef"]
        2 NAMECALL                         R2 R2 K1 ["getValue"]
        4 CALL                             R2 1 1
        5 JUMPIF                           R2 ; [+1]
        6 RETURN                           R0 0
        7 GETTABLEKS                       R3 R0 K2 ["flashTween"]
        9 JUMPIFNOT                        R3 ; [+5]
       10 GETTABLEKS                       R3 R0 K2 ["flashTween"]
       12 NAMECALL                         R3 R3 K3 ["Cancel"]
       14 CALL                             R3 1 0
       15 GETTABLEKS                       R3 R0 K4 ["props"]
       17 GETTABLEKS                       R3 R3 K5 ["IsSelected"]
       19 JUMPIFNOT                        R3 ; [+1]
       20 RETURN                           R0 0
       21 GETIMPORT                        R3 K8 [TweenInfo.new]
       23 LOADN                            R4 1
       24 GETIMPORT                        R5 K12 [Enum.EasingStyle.Linear]
       26 CALL                             R3 2 1
       27 GETUPVAL                         R4 0
       28 MOVE                             R6 R2
       29 MOVE                             R7 R3
       30 DUPTABLE                         R8 K14 [{"BackgroundColor3"}]
       31 GETTABLEKS                       R9 R0 K4 ["props"]
       33 GETTABLEKS                       R9 R9 K15 ["Style"]
       35 GETTABLEKS                       R9 R9 K16 ["BackgroundColor"]
       37 SETTABLEKS                       R9 R8 K13 ["BackgroundColor3"]
       39 NAMECALL                         R4 R4 K17 ["create"]
       41 CALL                             R4 4 1
       42 SETTABLEKS                       R4 R0 K2 ["flashTween"]
       44 LOADN                            R5 0
       45 MULK                             R7 R1 K19 [10]
       46 SUBRK                            R6 R18 K7 ["new"]
       47 FASTCALL2                        MATH_MAX R5 R6 ; [+3]
       49 GETIMPORT                        R4 K22 [math.max]
       51 CALL                             R4 2 1
       52 GETIMPORT                        R5 K25 [Color3.fromRGB]
       54 LOADN                            R6 255
       55 MOVE                             R7 R4
       56 LOADN                            R8 100
       57 CALL                             R5 3 1
       58 SETTABLEKS                       R5 R2 K13 ["BackgroundColor3"]
       60 GETTABLEKS                       R5 R0 K2 ["flashTween"]
       62 NAMECALL                         R5 R5 K26 ["Play"]
       64 CALL                             R5 1 0
       65 RETURN                           R0 0

PROTO_7:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R0 K1 ["state"]
        4 GETTABLEKS                       R3 R1 K2 ["Style"]
        6 GETTABLEKS                       R4 R1 K3 ["IsSelected"]
        8 GETTABLEKS                       R5 R3 K4 ["IconPadding"]
       10 GETUPVAL                         R6 0
       11 GETTABLEKS                       R7 R1 K5 ["Icon"]
       13 CALL                             R6 1 1
       14 GETTABLEKS                       R7 R6 K6 ["ImageRectSize"]
       16 GETTABLEKS                       R7 R7 K7 ["X"]
       18 LOADN                            R10 3
       19 MUL                              R9 R10 R5
       20 ADD                              R8 R7 R9
       21 JUMPIFNOT                        R4 ; [+3]
       22 GETTABLEKS                       R9 R3 K8 ["SelectedColor"]
       24 JUMPIF                           R9 ; [+8]
       25 GETTABLEKS                       R10 R2 K9 ["isHovering"]
       27 JUMPIFNOT                        R10 ; [+3]
       28 GETTABLEKS                       R9 R3 K10 ["HoverColor"]
       30 JUMPIF                           R9 ; [+2]
       31 GETTABLEKS                       R9 R3 K11 ["BackgroundColor"]
       33 JUMPIFNOT                        R4 ; [+3]
       34 GETTABLEKS                       R10 R3 K12 ["SelectedTextColor"]
       36 JUMPIF                           R10 ; [+1]
       37 LOADNIL                          R10
       38 GETUPVAL                         R11 1
       39 GETTABLEKS                       R12 R3 K13 ["Link"]
       41 DUPTABLE                         R13 K15 [{"TextColor"}]
       42 SETTABLEKS                       R10 R13 K14 ["TextColor"]
       44 CALL                             R11 2 1
       45 GETUPVAL                         R12 2
       46 GETTABLEKS                       R12 R12 K16 ["createElement"]
       48 GETUPVAL                         R13 3
       49 NEWTABLE                         R14 8 0
       51 GETUPVAL                         R15 2
       52 GETTABLEKS                       R15 R15 K17 ["Event"]
       54 GETTABLEKS                       R15 R15 K18 ["MouseEnter"]
       56 GETTABLEKS                       R16 R0 K19 ["onMouseEnter"]
       58 SETTABLE                         R16 R14 R15
       59 GETUPVAL                         R15 2
       60 GETTABLEKS                       R15 R15 K17 ["Event"]
       62 GETTABLEKS                       R15 R15 K20 ["MouseLeave"]
       64 GETTABLEKS                       R16 R0 K21 ["onMouseLeave"]
       66 SETTABLE                         R16 R14 R15
       67 GETUPVAL                         R15 2
       68 GETTABLEKS                       R15 R15 K17 ["Event"]
       70 GETTABLEKS                       R15 R15 K22 ["InputBegan"]
       72 GETTABLEKS                       R16 R0 K23 ["onInputBegan"]
       74 SETTABLE                         R16 R14 R15
       75 GETUPVAL                         R15 2
       76 GETTABLEKS                       R15 R15 K24 ["Ref"]
       78 GETTABLEKS                       R16 R0 K25 ["containerRef"]
       80 SETTABLE                         R16 R14 R15
       81 GETTABLEKS                       R15 R1 K26 ["Index"]
       83 SETTABLEKS                       R15 R14 K27 ["LayoutOrder"]
       85 SETTABLEKS                       R9 R14 K28 ["BackgroundColor3"]
       87 GETIMPORT                        R15 K31 [UDim2.new]
       89 LOADN                            R16 1
       90 LOADN                            R17 0
       91 LOADN                            R18 0
       92 GETTABLEKS                       R19 R3 K32 ["RowHeight"]
       94 CALL                             R15 4 1
       95 SETTABLEKS                       R15 R14 K33 ["Size"]
       97 DUPTABLE                         R15 K35 [{"Icon", "Text", "Link"}]
       98 GETUPVAL                         R16 2
       99 GETTABLEKS                       R16 R16 K16 ["createElement"]
      101 LOADK                            R17 K36 ["ImageLabel"]
      102 DUPTABLE                         R18 K42 [{"Size", "BackgroundTransparency", "Image", "ImageRectSize", "ImageRectOffset", "Position", "AnchorPoint"}]
      103 GETIMPORT                        R19 K44 [UDim2.fromOffset]
      105 MOVE                             R20 R7
      106 GETTABLEKS                       R21 R6 K6 ["ImageRectSize"]
      108 GETTABLEKS                       R21 R21 K45 ["Y"]
      110 CALL                             R19 2 1
      111 SETTABLEKS                       R19 R18 K33 ["Size"]
      113 LOADN                            R19 1
      114 SETTABLEKS                       R19 R18 K37 ["BackgroundTransparency"]
      116 GETTABLEKS                       R19 R6 K38 ["Image"]
      118 SETTABLEKS                       R19 R18 K38 ["Image"]
      120 GETTABLEKS                       R19 R6 K6 ["ImageRectSize"]
      122 SETTABLEKS                       R19 R18 K6 ["ImageRectSize"]
      124 GETTABLEKS                       R19 R6 K39 ["ImageRectOffset"]
      126 SETTABLEKS                       R19 R18 K39 ["ImageRectOffset"]
      128 GETIMPORT                        R19 K31 [UDim2.new]
      130 LOADN                            R20 0
      131 MOVE                             R21 R5
      132 LOADK                            R22 K46 [0.5]
      133 LOADN                            R23 0
      134 CALL                             R19 4 1
      135 SETTABLEKS                       R19 R18 K40 ["Position"]
      137 GETIMPORT                        R19 K48 [Vector2.new]
      139 LOADN                            R20 0
      140 LOADK                            R21 K46 [0.5]
      141 CALL                             R19 2 1
      142 SETTABLEKS                       R19 R18 K41 ["AnchorPoint"]
      144 CALL                             R16 2 1
      145 SETTABLEKS                       R16 R15 K5 ["Icon"]
      147 GETUPVAL                         R16 2
      148 GETTABLEKS                       R16 R16 K16 ["createElement"]
      150 GETUPVAL                         R17 4
      151 DUPTABLE                         R18 K51 [{"Style", "Text", "TextColor", "Size", "Position", "TextXAlignment", "TextYAlignment"}]
      152 GETTABLEKS                       R19 R3 K34 ["Text"]
      154 SETTABLEKS                       R19 R18 K2 ["Style"]
      156 GETTABLEKS                       R19 R1 K52 ["Name"]
      158 SETTABLEKS                       R19 R18 K34 ["Text"]
      160 SETTABLEKS                       R10 R18 K14 ["TextColor"]
      162 GETIMPORT                        R19 K31 [UDim2.new]
      164 LOADN                            R20 1
      165 LOADN                            R21 0
      166 LOADN                            R22 0
      167 GETTABLEKS                       R23 R3 K32 ["RowHeight"]
      169 CALL                             R19 4 1
      170 SETTABLEKS                       R19 R18 K33 ["Size"]
      172 GETIMPORT                        R19 K44 [UDim2.fromOffset]
      174 MOVE                             R20 R8
      175 LOADN                            R21 0
      176 CALL                             R19 2 1
      177 SETTABLEKS                       R19 R18 K40 ["Position"]
      179 GETIMPORT                        R19 K55 [Enum.TextXAlignment.Left]
      181 SETTABLEKS                       R19 R18 K49 ["TextXAlignment"]
      183 GETIMPORT                        R19 K57 [Enum.TextYAlignment.Center]
      185 SETTABLEKS                       R19 R18 K50 ["TextYAlignment"]
      187 CALL                             R16 2 1
      188 SETTABLEKS                       R16 R15 K34 ["Text"]
      190 GETUPVAL                         R16 2
      191 GETTABLEKS                       R16 R16 K16 ["createElement"]
      193 GETUPVAL                         R17 5
      194 DUPTABLE                         R18 K59 [{"OnClick", "Style", "AnchorPoint", "Position", "Text", "Size", "TextXAlignment", "TextYAlignment"}]
      195 GETTABLEKS                       R19 R0 K60 ["onClick"]
      197 SETTABLEKS                       R19 R18 K58 ["OnClick"]
      199 SETTABLEKS                       R11 R18 K2 ["Style"]
      201 GETIMPORT                        R19 K48 [Vector2.new]
      203 LOADN                            R20 1
      204 LOADN                            R21 0
      205 CALL                             R19 2 1
      206 SETTABLEKS                       R19 R18 K41 ["AnchorPoint"]
      208 GETIMPORT                        R19 K31 [UDim2.new]
      210 LOADN                            R20 1
      211 LOADN                            R21 246
      212 LOADN                            R22 0
      213 LOADN                            R23 0
      214 CALL                             R19 4 1
      215 SETTABLEKS                       R19 R18 K40 ["Position"]
      217 GETTABLEKS                       R19 R0 K0 ["props"]
      219 GETTABLEKS                       R19 R19 K61 ["LinkText"]
      221 SETTABLEKS                       R19 R18 K34 ["Text"]
      223 GETIMPORT                        R19 K31 [UDim2.new]
      225 LOADN                            R20 1
      226 LOADN                            R21 0
      227 LOADN                            R22 0
      228 GETTABLEKS                       R23 R3 K32 ["RowHeight"]
      230 CALL                             R19 4 1
      231 SETTABLEKS                       R19 R18 K33 ["Size"]
      233 GETIMPORT                        R19 K63 [Enum.TextXAlignment.Right]
      235 SETTABLEKS                       R19 R18 K49 ["TextXAlignment"]
      237 GETIMPORT                        R19 K57 [Enum.TextYAlignment.Center]
      239 SETTABLEKS                       R19 R18 K50 ["TextYAlignment"]
      241 CALL                             R16 2 1
      242 SETTABLEKS                       R16 R15 K13 ["Link"]
      244 CALL                             R12 3 -1
      245 RETURN                           R12 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETTABLEKS                       R0 R0 K2 ["Parent"]
       11 GETIMPORT                        R1 K4 [require]
       13 GETTABLEKS                       R2 R0 K5 ["Packages"]
       15 GETTABLEKS                       R2 R2 K6 ["Framework"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K4 [require]
       20 GETTABLEKS                       R3 R0 K5 ["Packages"]
       22 GETTABLEKS                       R3 R3 K7 ["Roact"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K4 [require]
       27 GETTABLEKS                       R4 R0 K8 ["Src"]
       29 GETTABLEKS                       R4 R4 K9 ["Util"]
       31 GETTABLEKS                       R4 R4 K10 ["getInspectorIcon"]
       33 CALL                             R3 1 1
       34 GETIMPORT                        R4 K12 [game]
       36 LOADK                            R6 K13 ["TweenService"]
       37 NAMECALL                         R4 R4 K14 ["GetService"]
       39 CALL                             R4 2 1
       40 GETIMPORT                        R5 K4 [require]
       42 GETTABLEKS                       R6 R0 K5 ["Packages"]
       44 GETTABLEKS                       R6 R6 K15 ["Dash"]
       46 CALL                             R5 1 1
       47 GETTABLEKS                       R6 R5 K16 ["join"]
       49 GETTABLEKS                       R7 R2 K17 ["PureComponent"]
       51 LOADK                            R9 K18 ["NodeListRow"]
       52 NAMECALL                         R7 R7 K19 ["extend"]
       54 CALL                             R7 2 1
       55 GETTABLEKS                       R8 R1 K20 ["UI"]
       57 GETTABLEKS                       R9 R8 K21 ["Pane"]
       59 GETTABLEKS                       R10 R8 K22 ["LinkText"]
       61 GETTABLEKS                       R11 R8 K23 ["TextLabel"]
       63 DUPCLOSURE                       R12 K24 [PROTO_4]
       64 CAPTURE                          VAL R2
       65 SETTABLEKS                       R12 R7 K25 ["init"]
       67 DUPCLOSURE                       R12 K26 [PROTO_5]
       68 SETTABLEKS                       R12 R7 K27 ["didUpdate"]
       70 DUPCLOSURE                       R12 K28 [PROTO_6]
       71 CAPTURE                          VAL R4
       72 SETTABLEKS                       R12 R7 K29 ["flash"]
       74 DUPCLOSURE                       R12 K30 [PROTO_7]
       75 CAPTURE                          VAL R3
       76 CAPTURE                          VAL R6
       77 CAPTURE                          VAL R2
       78 CAPTURE                          VAL R9
       79 CAPTURE                          VAL R11
       80 CAPTURE                          VAL R10
       81 SETTABLEKS                       R12 R7 K31 ["render"]
       83 RETURN                           R7 1
