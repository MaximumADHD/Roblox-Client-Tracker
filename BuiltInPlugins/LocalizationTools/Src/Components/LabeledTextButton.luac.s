PROTO_0:
        0 RETURN                           R0 0

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Stylizer"]
        4 GETTABLEKS                       R3 R1 K2 ["LayoutOrder"]
        6 GETTABLEKS                       R4 R1 K3 ["LabelText"]
        8 GETTABLEKS                       R5 R1 K4 ["ButtonText"]
       10 GETTABLEKS                       R6 R1 K5 ["Active"]
       12 JUMPIFNOT                        R6 ; [+3]
       13 GETTABLEKS                       R7 R1 K6 ["OnButtonClick"]
       15 JUMPIF                           R7 ; [+1]
       16 DUPCLOSURE                       R7 K7 [PROTO_0]
       17 GETUPVAL                         R8 0
       18 GETTABLEKS                       R8 R8 K8 ["createElement"]
       20 LOADK                            R9 K9 ["Frame"]
       21 DUPTABLE                         R10 K13 [{["BackgroundTransparency"] = 1, ["LayoutOrder"], ["Size"]}]
       22 SETTABLEKS                       R3 R10 K2 ["LayoutOrder"]
       24 GETIMPORT                        R11 K16 [UDim2.new]
       26 LOADN                            R12 1
       27 LOADN                            R13 0
       28 LOADN                            R14 0
       29 GETTABLEKS                       R15 R2 K17 ["Height"]
       31 CALL                             R11 4 1
       32 SETTABLEKS                       R11 R10 K12 ["Size"]
       34 DUPTABLE                         R11 K21 [{"Layout", "Label", "ButtonContainer"}]
       35 GETUPVAL                         R12 0
       36 GETTABLEKS                       R12 R12 K8 ["createElement"]
       38 LOADK                            R13 K22 ["UIListLayout"]
       39 DUPTABLE                         R14 K25 [{"SortOrder", "FillDirection"}]
       40 GETIMPORT                        R15 K27 [Enum.SortOrder.LayoutOrder]
       42 SETTABLEKS                       R15 R14 K23 ["SortOrder"]
       44 GETIMPORT                        R15 K29 [Enum.FillDirection.Horizontal]
       46 SETTABLEKS                       R15 R14 K24 ["FillDirection"]
       48 CALL                             R12 2 1
       49 SETTABLEKS                       R12 R11 K18 ["Layout"]
       51 GETUPVAL                         R12 0
       52 GETTABLEKS                       R12 R12 K8 ["createElement"]
       54 GETUPVAL                         R13 1
       55 DUPTABLE                         R14 K35 [{["LayoutOrder"] = 1, ["Size"], ["Text"], ["StyleModifier"], ["TextXAlignment"], ["TextWrapped"] = True}]
       56 GETIMPORT                        R15 K16 [UDim2.new]
       58 LOADN                            R16 0
       59 GETTABLEKS                       R17 R2 K36 ["LabelWidth"]
       61 LOADN                            R18 1
       62 LOADN                            R19 0
       63 CALL                             R15 4 1
       64 SETTABLEKS                       R15 R14 K12 ["Size"]
       66 SETTABLEKS                       R4 R14 K30 ["Text"]
       68 JUMPIFNOT                        R6 ; [+2]
       69 LOADNIL                          R15
       70 JUMP                             ; [+3]
       71 GETUPVAL                         R15 2
       72 GETTABLEKS                       R15 R15 K37 ["Disabled"]
       74 SETTABLEKS                       R15 R14 K31 ["StyleModifier"]
       76 GETIMPORT                        R15 K39 [Enum.TextXAlignment.Left]
       78 SETTABLEKS                       R15 R14 K32 ["TextXAlignment"]
       80 CALL                             R12 2 1
       81 SETTABLEKS                       R12 R11 K19 ["Label"]
       83 GETUPVAL                         R12 0
       84 GETTABLEKS                       R12 R12 K8 ["createElement"]
       86 LOADK                            R13 K9 ["Frame"]
       87 DUPTABLE                         R14 K41 [{["BackgroundTransparency"] = 1, ["LayoutOrder"] = 2, ["Size"]}]
       88 GETIMPORT                        R15 K16 [UDim2.new]
       90 LOADN                            R16 0
       91 GETTABLEKS                       R17 R2 K42 ["ButtonWidth"]
       93 LOADN                            R18 1
       94 LOADN                            R19 0
       95 CALL                             R15 4 1
       96 SETTABLEKS                       R15 R14 K12 ["Size"]
       98 DUPTABLE                         R15 K44 [{"Button"}]
       99 GETUPVAL                         R16 0
      100 GETTABLEKS                       R16 R16 K8 ["createElement"]
      102 GETUPVAL                         R17 3
      103 DUPTABLE                         R18 K49 [{"AnchorPoint", "OnClick", "Position", "Size", "Style", "Text"}]
      104 GETIMPORT                        R19 K51 [Vector2.new]
      106 LOADK                            R20 K52 [0.5]
      107 LOADK                            R21 K52 [0.5]
      108 CALL                             R19 2 1
      109 SETTABLEKS                       R19 R18 K45 ["AnchorPoint"]
      111 SETTABLEKS                       R7 R18 K46 ["OnClick"]
      113 GETIMPORT                        R19 K16 [UDim2.new]
      115 LOADK                            R20 K52 [0.5]
      116 LOADN                            R21 0
      117 LOADK                            R22 K52 [0.5]
      118 LOADN                            R23 0
      119 CALL                             R19 4 1
      120 SETTABLEKS                       R19 R18 K47 ["Position"]
      122 GETIMPORT                        R19 K16 [UDim2.new]
      124 LOADN                            R20 1
      125 LOADN                            R21 0
      126 LOADN                            R22 0
      127 GETTABLEKS                       R23 R2 K53 ["ButtonHeight"]
      129 CALL                             R19 4 1
      130 SETTABLEKS                       R19 R18 K12 ["Size"]
      132 JUMPIFNOT                        R6 ; [+2]
      133 LOADK                            R19 K54 ["TextButton"]
      134 JUMP                             ; [+1]
      135 LOADK                            R19 K55 ["DisabledTextButton"]
      136 SETTABLEKS                       R19 R18 K48 ["Style"]
      138 SETTABLEKS                       R5 R18 K30 ["Text"]
      140 NEWTABLE                         R19 0 1
      142 GETUPVAL                         R20 0
      143 GETTABLEKS                       R20 R20 K8 ["createElement"]
      145 GETUPVAL                         R21 4
      146 DUPTABLE                         R22 K58 [{["Cursor"] = "PointingHand"}]
      147 CALL                             R20 2 -1
      148 SETLIST                          R19 R20 -1 [1]
      150 CALL                             R16 3 1
      151 SETTABLEKS                       R16 R15 K43 ["Button"]
      153 CALL                             R12 3 1
      154 SETTABLEKS                       R12 R11 K20 ["ButtonContainer"]
      156 CALL                             R8 3 -1
      157 RETURN                           R8 -1

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
       29 GETTABLEKS                       R6 R5 K11 ["Button"]
       31 GETTABLEKS                       R7 R5 K12 ["HoverArea"]
       33 GETTABLEKS                       R8 R5 K13 ["TextLabel"]
       35 GETTABLEKS                       R9 R2 K14 ["Util"]
       37 GETTABLEKS                       R9 R9 K15 ["StyleModifier"]
       39 GETTABLEKS                       R10 R1 K16 ["PureComponent"]
       41 LOADK                            R12 K17 ["LabeledTextButton"]
       42 NAMECALL                         R10 R10 K18 ["extend"]
       44 CALL                             R10 2 1
       45 DUPCLOSURE                       R11 K19 [PROTO_1]
       46 CAPTURE                          VAL R1
       47 CAPTURE                          VAL R8
       48 CAPTURE                          VAL R9
       49 CAPTURE                          VAL R6
       50 CAPTURE                          VAL R7
       51 SETTABLEKS                       R11 R10 K20 ["render"]
       53 MOVE                             R11 R4
       54 DUPTABLE                         R12 K22 [{"Stylizer"}]
       55 GETTABLEKS                       R13 R3 K21 ["Stylizer"]
       57 SETTABLEKS                       R13 R12 K21 ["Stylizer"]
       59 CALL                             R11 1 1
       60 MOVE                             R12 R10
       61 CALL                             R11 1 1
       62 MOVE                             R10 R11
       63 RETURN                           R10 1
