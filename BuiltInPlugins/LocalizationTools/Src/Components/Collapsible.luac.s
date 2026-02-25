PROTO_0:
        0 DUPTABLE                         R1 K1 [{"open"}]
        1 GETTABLEKS                       R3 R0 K0 ["open"]
        3 NOT                              R2 R3
        4 SETTABLEKS                       R2 R1 K0 ["open"]
        6 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["props"]
        3 GETTABLEKS                       R1 R0 K1 ["Active"]
        5 JUMPIF                           R1 ; [+1]
        6 RETURN                           R0 0
        7 GETUPVAL                         R2 0
        8 DUPCLOSURE                       R4 K2 [PROTO_0]
        9 NAMECALL                         R2 R2 K3 ["setState"]
       11 CALL                             R2 2 0
       12 RETURN                           R0 0

PROTO_2:
        0 DUPTABLE                         R1 K1 [{"open"}]
        1 LOADB                            R2 0
        2 SETTABLEKS                       R2 R1 K0 ["open"]
        4 SETTABLEKS                       R1 R0 K2 ["state"]
        6 NEWCLOSURE                       R1 P0
        7 CAPTURE                          VAL R0
        8 SETTABLEKS                       R1 R0 K3 ["onActivated"]
       10 RETURN                           R0 0

PROTO_3:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R0 K1 ["state"]
        4 GETTABLEKS                       R3 R2 K2 ["open"]
        6 GETTABLEKS                       R4 R1 K3 ["Stylizer"]
        8 GETTABLEKS                       R5 R1 K4 ["Title"]
       10 GETTABLEKS                       R6 R1 K5 ["RenderContent"]
       12 GETTABLEKS                       R7 R1 K6 ["LayoutOrder"]
       14 GETTABLEKS                       R8 R1 K7 ["Active"]
       16 GETUPVAL                         R10 0
       17 GETTABLEKS                       R9 R10 K8 ["createElement"]
       19 LOADK                            R10 K9 ["TextButton"]
       20 NEWTABLE                         R11 4 0
       22 LOADN                            R12 1
       23 SETTABLEKS                       R12 R11 K10 ["BackgroundTransparency"]
       25 GETIMPORT                        R12 K13 [UDim2.new]
       27 LOADN                            R13 1
       28 LOADN                            R14 0
       29 LOADN                            R15 0
       30 GETTABLEKS                       R16 R4 K14 ["TopBarHeight"]
       32 CALL                             R12 4 1
       33 SETTABLEKS                       R12 R11 K15 ["Size"]
       35 LOADK                            R12 K16 [""]
       36 SETTABLEKS                       R12 R11 K17 ["Text"]
       38 GETUPVAL                         R14 0
       39 GETTABLEKS                       R13 R14 K18 ["Event"]
       41 GETTABLEKS                       R12 R13 K19 ["Activated"]
       43 GETTABLEKS                       R13 R0 K20 ["onActivated"]
       45 SETTABLE                         R13 R11 R12
       46 DUPTABLE                         R12 K23 [{"Layout", "IconFrame", "Title"}]
       47 GETUPVAL                         R14 0
       48 GETTABLEKS                       R13 R14 K8 ["createElement"]
       50 LOADK                            R14 K24 ["UIListLayout"]
       51 DUPTABLE                         R15 K27 [{"SortOrder", "FillDirection"}]
       52 GETIMPORT                        R16 K29 [Enum.SortOrder.LayoutOrder]
       54 SETTABLEKS                       R16 R15 K25 ["SortOrder"]
       56 GETIMPORT                        R16 K31 [Enum.FillDirection.Horizontal]
       58 SETTABLEKS                       R16 R15 K26 ["FillDirection"]
       60 CALL                             R13 2 1
       61 SETTABLEKS                       R13 R12 K21 ["Layout"]
       63 GETUPVAL                         R14 0
       64 GETTABLEKS                       R13 R14 K8 ["createElement"]
       66 LOADK                            R14 K32 ["Frame"]
       67 DUPTABLE                         R15 K33 [{"BackgroundTransparency", "LayoutOrder", "Size"}]
       68 LOADN                            R16 1
       69 SETTABLEKS                       R16 R15 K10 ["BackgroundTransparency"]
       71 LOADN                            R16 1
       72 SETTABLEKS                       R16 R15 K6 ["LayoutOrder"]
       74 GETIMPORT                        R16 K13 [UDim2.new]
       76 LOADN                            R17 0
       77 GETTABLEKS                       R18 R4 K14 ["TopBarHeight"]
       79 LOADN                            R19 1
       80 LOADN                            R20 0
       81 CALL                             R16 4 1
       82 SETTABLEKS                       R16 R15 K15 ["Size"]
       84 DUPTABLE                         R16 K35 [{"Icon"}]
       85 GETUPVAL                         R18 0
       86 GETTABLEKS                       R17 R18 K8 ["createElement"]
       88 LOADK                            R18 K36 ["ImageLabel"]
       89 DUPTABLE                         R19 K41 [{"AnchorPoint", "BackgroundTransparency", "ImageColor3", "Image", "Position", "Size"}]
       90 GETIMPORT                        R20 K43 [Vector2.new]
       92 LOADK                            R21 K44 [0.5]
       93 LOADK                            R22 K44 [0.5]
       94 CALL                             R20 2 1
       95 SETTABLEKS                       R20 R19 K37 ["AnchorPoint"]
       97 LOADN                            R20 1
       98 SETTABLEKS                       R20 R19 K10 ["BackgroundTransparency"]
      100 GETTABLEKS                       R20 R4 K45 ["IconColor"]
      102 SETTABLEKS                       R20 R19 K38 ["ImageColor3"]
      104 JUMPIFNOT                        R3 ; [+3]
      105 GETTABLEKS                       R20 R4 K46 ["IconImageOpen"]
      107 JUMPIF                           R20 ; [+2]
      108 GETTABLEKS                       R20 R4 K47 ["IconImageClosed"]
      110 SETTABLEKS                       R20 R19 K39 ["Image"]
      112 GETIMPORT                        R20 K13 [UDim2.new]
      114 LOADK                            R21 K44 [0.5]
      115 LOADN                            R22 0
      116 LOADK                            R23 K44 [0.5]
      117 LOADN                            R24 0
      118 CALL                             R20 4 1
      119 SETTABLEKS                       R20 R19 K40 ["Position"]
      121 GETIMPORT                        R20 K13 [UDim2.new]
      123 LOADN                            R21 0
      124 GETTABLEKS                       R22 R4 K48 ["IconSize"]
      126 LOADN                            R23 0
      127 GETTABLEKS                       R24 R4 K48 ["IconSize"]
      129 CALL                             R20 4 1
      130 SETTABLEKS                       R20 R19 K15 ["Size"]
      132 CALL                             R17 2 1
      133 SETTABLEKS                       R17 R16 K34 ["Icon"]
      135 CALL                             R13 3 1
      136 SETTABLEKS                       R13 R12 K22 ["IconFrame"]
      138 GETUPVAL                         R14 0
      139 GETTABLEKS                       R13 R14 K8 ["createElement"]
      141 GETUPVAL                         R14 1
      142 DUPTABLE                         R15 K51 [{"AutomaticSize", "LayoutOrder", "Text", "StyleModifier"}]
      143 GETIMPORT                        R16 K53 [Enum.AutomaticSize.XY]
      145 SETTABLEKS                       R16 R15 K49 ["AutomaticSize"]
      147 LOADN                            R16 2
      148 SETTABLEKS                       R16 R15 K6 ["LayoutOrder"]
      150 SETTABLEKS                       R5 R15 K17 ["Text"]
      152 JUMPIFNOT                        R8 ; [+2]
      153 LOADNIL                          R16
      154 JUMP                             ; [+3]
      155 GETUPVAL                         R17 2
      156 GETTABLEKS                       R16 R17 K54 ["Disabled"]
      158 SETTABLEKS                       R16 R15 K50 ["StyleModifier"]
      160 CALL                             R13 2 1
      161 SETTABLEKS                       R13 R12 K4 ["Title"]
      163 CALL                             R9 3 1
      164 JUMPIFNOT                        R3 ; [+3]
      165 MOVE                             R10 R6
      166 CALL                             R10 0 1
      167 JUMPIF                           R10 ; [+1]
      168 LOADNIL                          R10
      169 GETUPVAL                         R12 0
      170 GETTABLEKS                       R11 R12 K8 ["createElement"]
      172 GETUPVAL                         R12 3
      173 DUPTABLE                         R13 K56 [{"AutomaticSize", "HorizontalAlignment", "Layout", "LayoutOrder"}]
      174 GETIMPORT                        R14 K58 [Enum.AutomaticSize.Y]
      176 SETTABLEKS                       R14 R13 K49 ["AutomaticSize"]
      178 GETIMPORT                        R14 K60 [Enum.HorizontalAlignment.Left]
      180 SETTABLEKS                       R14 R13 K55 ["HorizontalAlignment"]
      182 GETIMPORT                        R14 K62 [Enum.FillDirection.Vertical]
      184 SETTABLEKS                       R14 R13 K21 ["Layout"]
      186 SETTABLEKS                       R7 R13 K6 ["LayoutOrder"]
      188 DUPTABLE                         R14 K65 [{"TopBar", "Content"}]
      189 SETTABLEKS                       R9 R14 K63 ["TopBar"]
      191 SETTABLEKS                       R10 R14 K64 ["Content"]
      193 CALL                             R11 3 -1
      194 RETURN                           R11 -1

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
       25 GETTABLEKS                       R4 R3 K9 ["withContext"]
       27 GETTABLEKS                       R5 R2 K10 ["UI"]
       29 GETTABLEKS                       R6 R5 K11 ["Pane"]
       31 GETTABLEKS                       R7 R5 K12 ["TextLabel"]
       33 GETTABLEKS                       R9 R2 K13 ["Util"]
       35 GETTABLEKS                       R8 R9 K14 ["StyleModifier"]
       37 GETTABLEKS                       R9 R1 K15 ["PureComponent"]
       39 LOADK                            R11 K16 ["Collapsible"]
       40 NAMECALL                         R9 R9 K17 ["extend"]
       42 CALL                             R9 2 1
       43 DUPCLOSURE                       R10 K18 [PROTO_2]
       44 SETTABLEKS                       R10 R9 K19 ["init"]
       46 DUPCLOSURE                       R10 K20 [PROTO_3]
       47 CAPTURE                          VAL R1
       48 CAPTURE                          VAL R7
       49 CAPTURE                          VAL R8
       50 CAPTURE                          VAL R6
       51 SETTABLEKS                       R10 R9 K21 ["render"]
       53 MOVE                             R10 R4
       54 DUPTABLE                         R11 K23 [{"Stylizer"}]
       55 GETTABLEKS                       R12 R3 K22 ["Stylizer"]
       57 SETTABLEKS                       R12 R11 K22 ["Stylizer"]
       59 CALL                             R10 1 1
       60 MOVE                             R11 R9
       61 CALL                             R10 1 1
       62 MOVE                             R9 R10
       63 RETURN                           R9 1
