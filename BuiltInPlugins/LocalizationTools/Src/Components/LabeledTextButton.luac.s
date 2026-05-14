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
       21 DUPTABLE                         R10 K12 [{"BackgroundTransparency", "LayoutOrder", "Size"}]
       22 LOADN                            R11 1
       23 SETTABLEKS                       R11 R10 K10 ["BackgroundTransparency"]
       25 SETTABLEKS                       R3 R10 K2 ["LayoutOrder"]
       27 GETIMPORT                        R11 K15 [UDim2.new]
       29 LOADN                            R12 1
       30 LOADN                            R13 0
       31 LOADN                            R14 0
       32 GETTABLEKS                       R15 R2 K16 ["Height"]
       34 CALL                             R11 4 1
       35 SETTABLEKS                       R11 R10 K11 ["Size"]
       37 DUPTABLE                         R11 K20 [{"Layout", "Label", "ButtonContainer"}]
       38 GETUPVAL                         R12 0
       39 GETTABLEKS                       R12 R12 K8 ["createElement"]
       41 LOADK                            R13 K21 ["UIListLayout"]
       42 DUPTABLE                         R14 K24 [{"SortOrder", "FillDirection"}]
       43 GETIMPORT                        R15 K26 [Enum.SortOrder.LayoutOrder]
       45 SETTABLEKS                       R15 R14 K22 ["SortOrder"]
       47 GETIMPORT                        R15 K28 [Enum.FillDirection.Horizontal]
       49 SETTABLEKS                       R15 R14 K23 ["FillDirection"]
       51 CALL                             R12 2 1
       52 SETTABLEKS                       R12 R11 K17 ["Layout"]
       54 GETUPVAL                         R12 0
       55 GETTABLEKS                       R12 R12 K8 ["createElement"]
       57 GETUPVAL                         R13 1
       58 DUPTABLE                         R14 K33 [{"LayoutOrder", "Size", "Text", "StyleModifier", "TextXAlignment", "TextWrapped"}]
       59 LOADN                            R15 1
       60 SETTABLEKS                       R15 R14 K2 ["LayoutOrder"]
       62 GETIMPORT                        R15 K15 [UDim2.new]
       64 LOADN                            R16 0
       65 GETTABLEKS                       R17 R2 K34 ["LabelWidth"]
       67 LOADN                            R18 1
       68 LOADN                            R19 0
       69 CALL                             R15 4 1
       70 SETTABLEKS                       R15 R14 K11 ["Size"]
       72 SETTABLEKS                       R4 R14 K29 ["Text"]
       74 JUMPIFNOT                        R6 ; [+2]
       75 LOADNIL                          R15
       76 JUMP                             ; [+3]
       77 GETUPVAL                         R15 2
       78 GETTABLEKS                       R15 R15 K35 ["Disabled"]
       80 SETTABLEKS                       R15 R14 K30 ["StyleModifier"]
       82 GETIMPORT                        R15 K37 [Enum.TextXAlignment.Left]
       84 SETTABLEKS                       R15 R14 K31 ["TextXAlignment"]
       86 GETUPVAL                         R15 3
       87 SETTABLEKS                       R15 R14 K32 ["TextWrapped"]
       89 CALL                             R12 2 1
       90 SETTABLEKS                       R12 R11 K18 ["Label"]
       92 GETUPVAL                         R12 0
       93 GETTABLEKS                       R12 R12 K8 ["createElement"]
       95 LOADK                            R13 K9 ["Frame"]
       96 DUPTABLE                         R14 K12 [{"BackgroundTransparency", "LayoutOrder", "Size"}]
       97 LOADN                            R15 1
       98 SETTABLEKS                       R15 R14 K10 ["BackgroundTransparency"]
      100 LOADN                            R15 2
      101 SETTABLEKS                       R15 R14 K2 ["LayoutOrder"]
      103 GETIMPORT                        R15 K15 [UDim2.new]
      105 LOADN                            R16 0
      106 GETTABLEKS                       R17 R2 K38 ["ButtonWidth"]
      108 LOADN                            R18 1
      109 LOADN                            R19 0
      110 CALL                             R15 4 1
      111 SETTABLEKS                       R15 R14 K11 ["Size"]
      113 DUPTABLE                         R15 K40 [{"Button"}]
      114 GETUPVAL                         R16 0
      115 GETTABLEKS                       R16 R16 K8 ["createElement"]
      117 GETUPVAL                         R17 4
      118 DUPTABLE                         R18 K45 [{"AnchorPoint", "OnClick", "Position", "Size", "Style", "Text"}]
      119 GETIMPORT                        R19 K47 [Vector2.new]
      121 LOADK                            R20 K48 [0.5]
      122 LOADK                            R21 K48 [0.5]
      123 CALL                             R19 2 1
      124 SETTABLEKS                       R19 R18 K41 ["AnchorPoint"]
      126 SETTABLEKS                       R7 R18 K42 ["OnClick"]
      128 GETIMPORT                        R19 K15 [UDim2.new]
      130 LOADK                            R20 K48 [0.5]
      131 LOADN                            R21 0
      132 LOADK                            R22 K48 [0.5]
      133 LOADN                            R23 0
      134 CALL                             R19 4 1
      135 SETTABLEKS                       R19 R18 K43 ["Position"]
      137 GETIMPORT                        R19 K15 [UDim2.new]
      139 LOADN                            R20 1
      140 LOADN                            R21 0
      141 LOADN                            R22 0
      142 GETTABLEKS                       R23 R2 K49 ["ButtonHeight"]
      144 CALL                             R19 4 1
      145 SETTABLEKS                       R19 R18 K11 ["Size"]
      147 JUMPIFNOT                        R6 ; [+2]
      148 LOADK                            R19 K50 ["TextButton"]
      149 JUMP                             ; [+1]
      150 LOADK                            R19 K51 ["DisabledTextButton"]
      151 SETTABLEKS                       R19 R18 K44 ["Style"]
      153 SETTABLEKS                       R5 R18 K29 ["Text"]
      155 NEWTABLE                         R19 0 1
      157 GETUPVAL                         R20 0
      158 GETTABLEKS                       R20 R20 K8 ["createElement"]
      160 GETUPVAL                         R21 5
      161 DUPTABLE                         R22 K53 [{"Cursor"}]
      162 LOADK                            R23 K54 ["PointingHand"]
      163 SETTABLEKS                       R23 R22 K52 ["Cursor"]
      165 CALL                             R20 2 -1
      166 SETLIST                          R19 R20 -1 [1]
      168 CALL                             R16 3 1
      169 SETTABLEKS                       R16 R15 K39 ["Button"]
      171 CALL                             R12 3 1
      172 SETTABLEKS                       R12 R11 K19 ["ButtonContainer"]
      174 CALL                             R8 3 -1
      175 RETURN                           R8 -1

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
       39 GETIMPORT                        R10 K17 [game]
       41 LOADK                            R12 K18 ["LocalizationToolsUpdateTextScraperUI"]
       42 NAMECALL                         R10 R10 K19 ["GetFastFlag"]
       44 CALL                             R10 2 1
       45 GETTABLEKS                       R11 R1 K20 ["PureComponent"]
       47 LOADK                            R13 K21 ["LabeledTextButton"]
       48 NAMECALL                         R11 R11 K22 ["extend"]
       50 CALL                             R11 2 1
       51 DUPCLOSURE                       R12 K23 [PROTO_1]
       52 CAPTURE                          VAL R1
       53 CAPTURE                          VAL R8
       54 CAPTURE                          VAL R9
       55 CAPTURE                          VAL R10
       56 CAPTURE                          VAL R6
       57 CAPTURE                          VAL R7
       58 SETTABLEKS                       R12 R11 K24 ["render"]
       60 MOVE                             R12 R4
       61 DUPTABLE                         R13 K26 [{"Stylizer"}]
       62 GETTABLEKS                       R14 R3 K25 ["Stylizer"]
       64 SETTABLEKS                       R14 R13 K25 ["Stylizer"]
       66 CALL                             R12 1 1
       67 MOVE                             R13 R11
       68 CALL                             R12 1 1
       69 MOVE                             R11 R12
       70 RETURN                           R11 1
