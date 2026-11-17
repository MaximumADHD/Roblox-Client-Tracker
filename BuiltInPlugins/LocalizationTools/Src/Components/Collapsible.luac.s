PROTO_0:
        0 DUPTABLE                         R1 K1 [{"open"}]
        1 GETTABLEKS                       R3 R0 K0 ["open"]
        3 NOT                              R2 R3
        4 SETTABLEKS                       R2 R1 K0 ["open"]
        6 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R1 R0 K1 ["Active"]
        5 JUMPIF                           R1 ; [+1]
        6 RETURN                           R0 0
        7 GETUPVAL                         R2 0
        8 DUPCLOSURE                       R4 K2 [PROTO_0]
        9 NAMECALL                         R2 R2 K3 ["setState"]
       11 CALL                             R2 2 0
       12 RETURN                           R0 0

PROTO_2:
        0 DUPTABLE                         R1 K2 [{[1] = False}]
        1 SETTABLEKS                       R1 R0 K3 ["state"]
        3 NEWCLOSURE                       R1 P0
        4 CAPTURE                          VAL R0
        5 SETTABLEKS                       R1 R0 K4 ["onActivated"]
        7 RETURN                           R0 0

PROTO_3:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R0 K1 ["state"]
        4 GETTABLEKS                       R3 R2 K2 ["open"]
        6 GETTABLEKS                       R4 R1 K3 ["Stylizer"]
        8 GETTABLEKS                       R5 R1 K4 ["Title"]
       10 GETTABLEKS                       R6 R1 K5 ["RenderContent"]
       12 GETTABLEKS                       R7 R1 K6 ["LayoutOrder"]
       14 GETTABLEKS                       R8 R1 K7 ["Active"]
       16 GETUPVAL                         R9 0
       17 GETTABLEKS                       R9 R9 K8 ["createElement"]
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
       38 GETUPVAL                         R12 0
       39 GETTABLEKS                       R12 R12 K18 ["Event"]
       41 GETTABLEKS                       R12 R12 K19 ["Activated"]
       43 GETTABLEKS                       R13 R0 K20 ["onActivated"]
       45 SETTABLE                         R13 R11 R12
       46 DUPTABLE                         R12 K23 [{"Layout", "IconFrame", "Title"}]
       47 GETUPVAL                         R13 0
       48 GETTABLEKS                       R13 R13 K8 ["createElement"]
       50 LOADK                            R14 K24 ["UIListLayout"]
       51 DUPTABLE                         R15 K27 [{"SortOrder", "FillDirection"}]
       52 GETIMPORT                        R16 K29 [Enum.SortOrder.LayoutOrder]
       54 SETTABLEKS                       R16 R15 K25 ["SortOrder"]
       56 GETIMPORT                        R16 K31 [Enum.FillDirection.Horizontal]
       58 SETTABLEKS                       R16 R15 K26 ["FillDirection"]
       60 CALL                             R13 2 1
       61 SETTABLEKS                       R13 R12 K21 ["Layout"]
       63 GETUPVAL                         R13 0
       64 GETTABLEKS                       R13 R13 K8 ["createElement"]
       66 LOADK                            R14 K32 ["Frame"]
       67 DUPTABLE                         R15 K34 [{["BackgroundTransparency"] = 1, ["LayoutOrder"] = 1, ["Size"]}]
       68 GETIMPORT                        R16 K13 [UDim2.new]
       70 LOADN                            R17 0
       71 GETTABLEKS                       R18 R4 K14 ["TopBarHeight"]
       73 LOADN                            R19 1
       74 LOADN                            R20 0
       75 CALL                             R16 4 1
       76 SETTABLEKS                       R16 R15 K15 ["Size"]
       78 DUPTABLE                         R16 K36 [{"Icon"}]
       79 GETUPVAL                         R17 0
       80 GETTABLEKS                       R17 R17 K8 ["createElement"]
       82 LOADK                            R18 K37 ["ImageLabel"]
       83 DUPTABLE                         R19 K42 [{["AnchorPoint"], ["BackgroundTransparency"] = 1, ["ImageColor3"], ["Image"], ["Position"], ["Size"]}]
       84 GETIMPORT                        R20 K44 [Vector2.new]
       86 LOADK                            R21 K45 [0.5]
       87 LOADK                            R22 K45 [0.5]
       88 CALL                             R20 2 1
       89 SETTABLEKS                       R20 R19 K38 ["AnchorPoint"]
       91 GETTABLEKS                       R20 R4 K46 ["IconColor"]
       93 SETTABLEKS                       R20 R19 K39 ["ImageColor3"]
       95 JUMPIFNOT                        R3 ; [+3]
       96 GETTABLEKS                       R20 R4 K47 ["IconImageOpen"]
       98 JUMPIF                           R20 ; [+2]
       99 GETTABLEKS                       R20 R4 K48 ["IconImageClosed"]
      101 SETTABLEKS                       R20 R19 K40 ["Image"]
      103 GETIMPORT                        R20 K13 [UDim2.new]
      105 LOADK                            R21 K45 [0.5]
      106 LOADN                            R22 0
      107 LOADK                            R23 K45 [0.5]
      108 LOADN                            R24 0
      109 CALL                             R20 4 1
      110 SETTABLEKS                       R20 R19 K41 ["Position"]
      112 GETIMPORT                        R20 K13 [UDim2.new]
      114 LOADN                            R21 0
      115 GETTABLEKS                       R22 R4 K49 ["IconSize"]
      117 LOADN                            R23 0
      118 GETTABLEKS                       R24 R4 K49 ["IconSize"]
      120 CALL                             R20 4 1
      121 SETTABLEKS                       R20 R19 K15 ["Size"]
      123 CALL                             R17 2 1
      124 SETTABLEKS                       R17 R16 K35 ["Icon"]
      126 CALL                             R13 3 1
      127 SETTABLEKS                       R13 R12 K22 ["IconFrame"]
      129 GETUPVAL                         R13 0
      130 GETTABLEKS                       R13 R13 K8 ["createElement"]
      132 GETUPVAL                         R14 1
      133 DUPTABLE                         R15 K53 [{["AutomaticSize"], ["LayoutOrder"] = 2, ["Text"], ["StyleModifier"]}]
      134 GETIMPORT                        R16 K55 [Enum.AutomaticSize.XY]
      136 SETTABLEKS                       R16 R15 K50 ["AutomaticSize"]
      138 SETTABLEKS                       R5 R15 K17 ["Text"]
      140 JUMPIFNOT                        R8 ; [+2]
      141 LOADNIL                          R16
      142 JUMP                             ; [+3]
      143 GETUPVAL                         R16 2
      144 GETTABLEKS                       R16 R16 K56 ["Disabled"]
      146 SETTABLEKS                       R16 R15 K52 ["StyleModifier"]
      148 CALL                             R13 2 1
      149 SETTABLEKS                       R13 R12 K4 ["Title"]
      151 CALL                             R9 3 1
      152 JUMPIFNOT                        R3 ; [+3]
      153 MOVE                             R10 R6
      154 CALL                             R10 0 1
      155 JUMPIF                           R10 ; [+1]
      156 LOADNIL                          R10
      157 GETUPVAL                         R11 0
      158 GETTABLEKS                       R11 R11 K8 ["createElement"]
      160 GETUPVAL                         R12 3
      161 DUPTABLE                         R13 K58 [{"AutomaticSize", "HorizontalAlignment", "Layout", "LayoutOrder"}]
      162 GETIMPORT                        R14 K60 [Enum.AutomaticSize.Y]
      164 SETTABLEKS                       R14 R13 K50 ["AutomaticSize"]
      166 GETIMPORT                        R14 K62 [Enum.HorizontalAlignment.Left]
      168 SETTABLEKS                       R14 R13 K57 ["HorizontalAlignment"]
      170 GETIMPORT                        R14 K64 [Enum.FillDirection.Vertical]
      172 SETTABLEKS                       R14 R13 K21 ["Layout"]
      174 SETTABLEKS                       R7 R13 K6 ["LayoutOrder"]
      176 DUPTABLE                         R14 K67 [{"TopBar", "Content"}]
      177 SETTABLEKS                       R9 R14 K65 ["TopBar"]
      179 SETTABLEKS                       R10 R14 K66 ["Content"]
      181 CALL                             R11 3 -1
      182 RETURN                           R11 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R2 K6 ["Roact"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R3 R0 K5 ["Packages"]
       20 GETTABLEKS                       R3 R3 K7 ["Framework"]
       22 CALL                             R2 1 1
       23 GETTABLEKS                       R3 R2 K8 ["ContextServices"]
       25 GETTABLEKS                       R4 R3 K9 ["withContext"]
       27 GETTABLEKS                       R5 R2 K10 ["UI"]
       29 GETTABLEKS                       R6 R5 K11 ["Pane"]
       31 GETTABLEKS                       R7 R5 K12 ["TextLabel"]
       33 GETTABLEKS                       R8 R2 K13 ["Util"]
       35 GETTABLEKS                       R8 R8 K14 ["StyleModifier"]
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
