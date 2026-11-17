PROTO_0:
        0 RETURN                           R0 0

PROTO_1:
        0 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["Link"]
        4 NAMECALL                         R0 R0 K1 ["OpenBrowserWindow"]
        6 CALL                             R0 2 0
        7 RETURN                           R0 0

PROTO_3:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Stylizer"]
        4 GETTABLEKS                       R3 R1 K2 ["LayoutOrder"]
        6 GETTABLEKS                       R4 R1 K3 ["LabelText"]
        8 GETTABLEKS                       R5 R1 K4 ["LinkText"]
       10 GETTABLEKS                       R7 R1 K5 ["Active"]
       12 JUMPIFNOT                        R7 ; [+3]
       13 GETTABLEKS                       R6 R1 K6 ["OnButtonClick"]
       15 JUMPIF                           R6 ; [+1]
       16 DUPCLOSURE                       R6 K7 [PROTO_1]
       17 GETTABLEKS                       R7 R1 K8 ["Enabled"]
       19 GETUPVAL                         R8 0
       20 GETTABLEKS                       R8 R8 K9 ["createElement"]
       22 LOADK                            R9 K10 ["Frame"]
       23 DUPTABLE                         R10 K14 [{["BackgroundTransparency"] = 1, ["LayoutOrder"], ["Size"]}]
       24 SETTABLEKS                       R3 R10 K2 ["LayoutOrder"]
       26 GETIMPORT                        R11 K17 [UDim2.new]
       28 LOADN                            R12 0
       29 LOADN                            R13 0
       30 LOADN                            R14 0
       31 GETTABLEKS                       R15 R2 K18 ["Height"]
       33 CALL                             R11 4 1
       34 SETTABLEKS                       R11 R10 K13 ["Size"]
       36 DUPTABLE                         R11 K22 [{"Layout", "Label", "LinkTextFrame"}]
       37 GETUPVAL                         R12 0
       38 GETTABLEKS                       R12 R12 K9 ["createElement"]
       40 LOADK                            R13 K23 ["UIListLayout"]
       41 DUPTABLE                         R14 K26 [{"SortOrder", "FillDirection"}]
       42 GETIMPORT                        R15 K28 [Enum.SortOrder.LayoutOrder]
       44 SETTABLEKS                       R15 R14 K24 ["SortOrder"]
       46 GETIMPORT                        R15 K30 [Enum.FillDirection.Vertical]
       48 SETTABLEKS                       R15 R14 K25 ["FillDirection"]
       50 CALL                             R12 2 1
       51 SETTABLEKS                       R12 R11 K19 ["Layout"]
       53 GETUPVAL                         R12 0
       54 GETTABLEKS                       R12 R12 K9 ["createElement"]
       56 GETUPVAL                         R13 1
       57 DUPTABLE                         R14 K35 [{["LayoutOrder"] = 1, ["Size"], ["Text"], ["TextXAlignment"], ["TextWrapped"] = True}]
       58 GETIMPORT                        R15 K17 [UDim2.new]
       60 LOADN                            R16 0
       61 GETTABLEKS                       R17 R2 K36 ["LabelWidth"]
       63 LOADN                            R18 1
       64 LOADN                            R19 0
       65 CALL                             R15 4 1
       66 SETTABLEKS                       R15 R14 K13 ["Size"]
       68 SETTABLEKS                       R4 R14 K31 ["Text"]
       70 GETIMPORT                        R15 K38 [Enum.TextXAlignment.Left]
       72 SETTABLEKS                       R15 R14 K32 ["TextXAlignment"]
       74 CALL                             R12 2 1
       75 SETTABLEKS                       R12 R11 K20 ["Label"]
       77 GETUPVAL                         R12 0
       78 GETTABLEKS                       R12 R12 K9 ["createElement"]
       80 LOADK                            R13 K10 ["Frame"]
       81 DUPTABLE                         R14 K40 [{["BackgroundTransparency"] = 1, ["LayoutOrder"] = 3, ["Size"]}]
       82 GETIMPORT                        R15 K17 [UDim2.new]
       84 LOADN                            R16 1
       85 LOADN                            R17 0
       86 LOADN                            R18 0
       87 GETTABLEKS                       R19 R2 K41 ["LinkTextHeight"]
       89 CALL                             R15 4 1
       90 SETTABLEKS                       R15 R14 K13 ["Size"]
       92 DUPTABLE                         R15 K42 [{"LinkText"}]
       93 GETUPVAL                         R16 0
       94 GETTABLEKS                       R16 R16 K9 ["createElement"]
       96 GETUPVAL                         R17 2
       97 DUPTABLE                         R18 K46 [{"AnchorPoint", "Position", "OnClick", "Text"}]
       98 GETIMPORT                        R19 K48 [Vector2.new]
      100 LOADN                            R20 0
      101 LOADK                            R21 K49 [0.5]
      102 CALL                             R19 2 1
      103 SETTABLEKS                       R19 R18 K43 ["AnchorPoint"]
      105 GETIMPORT                        R19 K17 [UDim2.new]
      107 LOADN                            R20 0
      108 LOADN                            R21 0
      109 LOADN                            R22 0
      110 LOADN                            R23 10
      111 CALL                             R19 4 1
      112 SETTABLEKS                       R19 R18 K44 ["Position"]
      114 NEWCLOSURE                       R19 P1
      115 CAPTURE                          UPVAL U3
      116 CAPTURE                          VAL R1
      117 SETTABLEKS                       R19 R18 K45 ["OnClick"]
      119 SETTABLEKS                       R5 R18 K31 ["Text"]
      121 CALL                             R16 2 1
      122 SETTABLEKS                       R16 R15 K4 ["LinkText"]
      124 CALL                             R12 3 1
      125 SETTABLEKS                       R12 R11 K21 ["LinkTextFrame"]
      127 CALL                             R8 3 1
      128 GETUPVAL                         R9 0
      129 GETTABLEKS                       R9 R9 K9 ["createElement"]
      131 LOADK                            R10 K10 ["Frame"]
      132 DUPTABLE                         R11 K14 [{["BackgroundTransparency"] = 1, ["LayoutOrder"], ["Size"]}]
      133 SETTABLEKS                       R3 R11 K2 ["LayoutOrder"]
      135 GETIMPORT                        R12 K17 [UDim2.new]
      137 LOADN                            R13 0
      138 LOADN                            R14 0
      139 LOADN                            R15 0
      140 GETTABLEKS                       R16 R2 K18 ["Height"]
      142 CALL                             R12 4 1
      143 SETTABLEKS                       R12 R11 K13 ["Size"]
      145 DUPTABLE                         R12 K52 [{"Layout", "TextContainer", "ButtonContainer"}]
      146 GETUPVAL                         R13 0
      147 GETTABLEKS                       R13 R13 K9 ["createElement"]
      149 LOADK                            R14 K23 ["UIListLayout"]
      150 DUPTABLE                         R15 K26 [{"SortOrder", "FillDirection"}]
      151 GETIMPORT                        R16 K28 [Enum.SortOrder.LayoutOrder]
      153 SETTABLEKS                       R16 R15 K24 ["SortOrder"]
      155 GETIMPORT                        R16 K54 [Enum.FillDirection.Horizontal]
      157 SETTABLEKS                       R16 R15 K25 ["FillDirection"]
      159 CALL                             R13 2 1
      160 SETTABLEKS                       R13 R12 K19 ["Layout"]
      162 SETTABLEKS                       R8 R12 K50 ["TextContainer"]
      164 GETUPVAL                         R13 0
      165 GETTABLEKS                       R13 R13 K9 ["createElement"]
      167 LOADK                            R14 K10 ["Frame"]
      168 DUPTABLE                         R15 K56 [{["BackgroundTransparency"] = 1, ["LayoutOrder"] = 2, ["Size"]}]
      169 GETIMPORT                        R16 K17 [UDim2.new]
      171 LOADN                            R17 0
      172 GETTABLEKS                       R18 R2 K57 ["ButtonWidth"]
      174 LOADN                            R19 1
      175 LOADN                            R20 0
      176 CALL                             R16 4 1
      177 SETTABLEKS                       R16 R15 K13 ["Size"]
      179 DUPTABLE                         R16 K59 [{"Button"}]
      180 GETUPVAL                         R17 0
      181 GETTABLEKS                       R17 R17 K9 ["createElement"]
      183 GETUPVAL                         R18 4
      184 DUPTABLE                         R19 K61 [{"Selected", "OnClick", "Position", "Size"}]
      185 SETTABLEKS                       R7 R19 K60 ["Selected"]
      187 SETTABLEKS                       R6 R19 K45 ["OnClick"]
      189 GETIMPORT                        R20 K17 [UDim2.new]
      191 LOADN                            R21 0
      192 LOADN                            R22 275
      193 LOADK                            R23 K62 [0.2]
      194 LOADN                            R24 0
      195 CALL                             R20 4 1
      196 SETTABLEKS                       R20 R19 K44 ["Position"]
      198 GETIMPORT                        R20 K17 [UDim2.new]
      200 LOADN                            R21 1
      201 LOADN                            R22 0
      202 LOADN                            R23 0
      203 GETTABLEKS                       R24 R2 K63 ["ButtonHeight"]
      205 CALL                             R20 4 1
      206 SETTABLEKS                       R20 R19 K13 ["Size"]
      208 NEWTABLE                         R20 0 1
      210 GETUPVAL                         R21 0
      211 GETTABLEKS                       R21 R21 K9 ["createElement"]
      213 GETUPVAL                         R22 5
      214 DUPTABLE                         R23 K66 [{["Cursor"] = "PointingHand"}]
      215 CALL                             R21 2 -1
      216 SETLIST                          R20 R21 -1 [1]
      218 CALL                             R17 3 1
      219 SETTABLEKS                       R17 R16 K58 ["Button"]
      221 CALL                             R13 3 1
      222 SETTABLEKS                       R13 R12 K51 ["ButtonContainer"]
      224 CALL                             R9 3 -1
      225 RETURN                           R9 -1

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
       23 GETIMPORT                        R3 K9 [game]
       25 LOADK                            R5 K10 ["GuiService"]
       26 NAMECALL                         R3 R3 K11 ["GetService"]
       28 CALL                             R3 2 1
       29 GETTABLEKS                       R4 R2 K12 ["ContextServices"]
       31 GETTABLEKS                       R5 R4 K13 ["withContext"]
       33 GETTABLEKS                       R6 R2 K14 ["UI"]
       35 GETTABLEKS                       R7 R6 K15 ["HoverArea"]
       37 GETTABLEKS                       R8 R6 K16 ["TextLabel"]
       39 GETTABLEKS                       R9 R6 K17 ["ToggleButton"]
       41 GETTABLEKS                       R10 R6 K18 ["LinkText"]
       43 GETTABLEKS                       R11 R1 K19 ["PureComponent"]
       45 LOADK                            R13 K20 ["TextScraperToggle"]
       46 NAMECALL                         R11 R11 K21 ["extend"]
       48 CALL                             R11 2 1
       49 DUPCLOSURE                       R12 K22 [PROTO_0]
       50 SETTABLEKS                       R12 R11 K23 ["init"]
       52 DUPCLOSURE                       R12 K24 [PROTO_3]
       53 CAPTURE                          VAL R1
       54 CAPTURE                          VAL R8
       55 CAPTURE                          VAL R10
       56 CAPTURE                          VAL R3
       57 CAPTURE                          VAL R9
       58 CAPTURE                          VAL R7
       59 SETTABLEKS                       R12 R11 K25 ["render"]
       61 MOVE                             R12 R5
       62 DUPTABLE                         R13 K27 [{"Stylizer"}]
       63 GETTABLEKS                       R14 R4 K26 ["Stylizer"]
       65 SETTABLEKS                       R14 R13 K26 ["Stylizer"]
       67 CALL                             R12 1 1
       68 MOVE                             R13 R11
       69 CALL                             R12 1 1
       70 MOVE                             R11 R12
       71 RETURN                           R11 1
