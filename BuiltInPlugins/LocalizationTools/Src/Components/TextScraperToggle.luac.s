PROTO_0:
        0 RETURN                           R0 0

PROTO_1:
        0 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R3 1
        2 GETTABLEKS                       R2 R3 K0 ["Link"]
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
       19 GETUPVAL                         R9 0
       20 GETTABLEKS                       R8 R9 K9 ["createElement"]
       22 LOADK                            R9 K10 ["Frame"]
       23 DUPTABLE                         R10 K13 [{"BackgroundTransparency", "LayoutOrder", "Size"}]
       24 LOADN                            R11 1
       25 SETTABLEKS                       R11 R10 K11 ["BackgroundTransparency"]
       27 SETTABLEKS                       R3 R10 K2 ["LayoutOrder"]
       29 GETIMPORT                        R11 K16 [UDim2.new]
       31 LOADN                            R12 0
       32 LOADN                            R13 0
       33 LOADN                            R14 0
       34 GETTABLEKS                       R15 R2 K17 ["Height"]
       36 CALL                             R11 4 1
       37 SETTABLEKS                       R11 R10 K12 ["Size"]
       39 DUPTABLE                         R11 K21 [{"Layout", "Label", "LinkTextFrame"}]
       40 GETUPVAL                         R13 0
       41 GETTABLEKS                       R12 R13 K9 ["createElement"]
       43 LOADK                            R13 K22 ["UIListLayout"]
       44 DUPTABLE                         R14 K25 [{"SortOrder", "FillDirection"}]
       45 GETIMPORT                        R15 K27 [Enum.SortOrder.LayoutOrder]
       47 SETTABLEKS                       R15 R14 K23 ["SortOrder"]
       49 GETIMPORT                        R15 K29 [Enum.FillDirection.Vertical]
       51 SETTABLEKS                       R15 R14 K24 ["FillDirection"]
       53 CALL                             R12 2 1
       54 SETTABLEKS                       R12 R11 K18 ["Layout"]
       56 GETUPVAL                         R13 0
       57 GETTABLEKS                       R12 R13 K9 ["createElement"]
       59 GETUPVAL                         R13 1
       60 DUPTABLE                         R14 K33 [{"LayoutOrder", "Size", "Text", "TextXAlignment", "TextWrapped"}]
       61 LOADN                            R15 1
       62 SETTABLEKS                       R15 R14 K2 ["LayoutOrder"]
       64 GETIMPORT                        R15 K16 [UDim2.new]
       66 LOADN                            R16 0
       67 GETTABLEKS                       R17 R2 K34 ["LabelWidth"]
       69 LOADN                            R18 1
       70 LOADN                            R19 0
       71 CALL                             R15 4 1
       72 SETTABLEKS                       R15 R14 K12 ["Size"]
       74 SETTABLEKS                       R4 R14 K30 ["Text"]
       76 GETIMPORT                        R15 K36 [Enum.TextXAlignment.Left]
       78 SETTABLEKS                       R15 R14 K31 ["TextXAlignment"]
       80 LOADB                            R15 1
       81 SETTABLEKS                       R15 R14 K32 ["TextWrapped"]
       83 CALL                             R12 2 1
       84 SETTABLEKS                       R12 R11 K19 ["Label"]
       86 GETUPVAL                         R13 0
       87 GETTABLEKS                       R12 R13 K9 ["createElement"]
       89 LOADK                            R13 K10 ["Frame"]
       90 DUPTABLE                         R14 K13 [{"BackgroundTransparency", "LayoutOrder", "Size"}]
       91 LOADN                            R15 1
       92 SETTABLEKS                       R15 R14 K11 ["BackgroundTransparency"]
       94 LOADN                            R15 3
       95 SETTABLEKS                       R15 R14 K2 ["LayoutOrder"]
       97 GETIMPORT                        R15 K16 [UDim2.new]
       99 LOADN                            R16 1
      100 LOADN                            R17 0
      101 LOADN                            R18 0
      102 GETTABLEKS                       R19 R2 K37 ["LinkTextHeight"]
      104 CALL                             R15 4 1
      105 SETTABLEKS                       R15 R14 K12 ["Size"]
      107 DUPTABLE                         R15 K38 [{"LinkText"}]
      108 GETUPVAL                         R17 0
      109 GETTABLEKS                       R16 R17 K9 ["createElement"]
      111 GETUPVAL                         R17 2
      112 DUPTABLE                         R18 K42 [{"AnchorPoint", "Position", "OnClick", "Text"}]
      113 GETIMPORT                        R19 K44 [Vector2.new]
      115 LOADN                            R20 0
      116 LOADK                            R21 K45 [0.5]
      117 CALL                             R19 2 1
      118 SETTABLEKS                       R19 R18 K39 ["AnchorPoint"]
      120 GETIMPORT                        R19 K16 [UDim2.new]
      122 LOADN                            R20 0
      123 LOADN                            R21 0
      124 LOADN                            R22 0
      125 LOADN                            R23 10
      126 CALL                             R19 4 1
      127 SETTABLEKS                       R19 R18 K40 ["Position"]
      129 NEWCLOSURE                       R19 P1
      130 CAPTURE                          UPVAL U3
      131 CAPTURE                          VAL R1
      132 SETTABLEKS                       R19 R18 K41 ["OnClick"]
      134 SETTABLEKS                       R5 R18 K30 ["Text"]
      136 CALL                             R16 2 1
      137 SETTABLEKS                       R16 R15 K4 ["LinkText"]
      139 CALL                             R12 3 1
      140 SETTABLEKS                       R12 R11 K20 ["LinkTextFrame"]
      142 CALL                             R8 3 1
      143 GETUPVAL                         R10 0
      144 GETTABLEKS                       R9 R10 K9 ["createElement"]
      146 LOADK                            R10 K10 ["Frame"]
      147 DUPTABLE                         R11 K13 [{"BackgroundTransparency", "LayoutOrder", "Size"}]
      148 LOADN                            R12 1
      149 SETTABLEKS                       R12 R11 K11 ["BackgroundTransparency"]
      151 SETTABLEKS                       R3 R11 K2 ["LayoutOrder"]
      153 GETIMPORT                        R12 K16 [UDim2.new]
      155 LOADN                            R13 0
      156 LOADN                            R14 0
      157 LOADN                            R15 0
      158 GETTABLEKS                       R16 R2 K17 ["Height"]
      160 CALL                             R12 4 1
      161 SETTABLEKS                       R12 R11 K12 ["Size"]
      163 DUPTABLE                         R12 K48 [{"Layout", "TextContainer", "ButtonContainer"}]
      164 GETUPVAL                         R14 0
      165 GETTABLEKS                       R13 R14 K9 ["createElement"]
      167 LOADK                            R14 K22 ["UIListLayout"]
      168 DUPTABLE                         R15 K25 [{"SortOrder", "FillDirection"}]
      169 GETIMPORT                        R16 K27 [Enum.SortOrder.LayoutOrder]
      171 SETTABLEKS                       R16 R15 K23 ["SortOrder"]
      173 GETIMPORT                        R16 K50 [Enum.FillDirection.Horizontal]
      175 SETTABLEKS                       R16 R15 K24 ["FillDirection"]
      177 CALL                             R13 2 1
      178 SETTABLEKS                       R13 R12 K18 ["Layout"]
      180 SETTABLEKS                       R8 R12 K46 ["TextContainer"]
      182 GETUPVAL                         R14 0
      183 GETTABLEKS                       R13 R14 K9 ["createElement"]
      185 LOADK                            R14 K10 ["Frame"]
      186 DUPTABLE                         R15 K13 [{"BackgroundTransparency", "LayoutOrder", "Size"}]
      187 LOADN                            R16 1
      188 SETTABLEKS                       R16 R15 K11 ["BackgroundTransparency"]
      190 LOADN                            R16 2
      191 SETTABLEKS                       R16 R15 K2 ["LayoutOrder"]
      193 GETIMPORT                        R16 K16 [UDim2.new]
      195 LOADN                            R17 0
      196 GETTABLEKS                       R18 R2 K51 ["ButtonWidth"]
      198 LOADN                            R19 1
      199 LOADN                            R20 0
      200 CALL                             R16 4 1
      201 SETTABLEKS                       R16 R15 K12 ["Size"]
      203 DUPTABLE                         R16 K53 [{"Button"}]
      204 GETUPVAL                         R18 0
      205 GETTABLEKS                       R17 R18 K9 ["createElement"]
      207 GETUPVAL                         R18 4
      208 DUPTABLE                         R19 K55 [{"Selected", "OnClick", "Position", "Size"}]
      209 SETTABLEKS                       R7 R19 K54 ["Selected"]
      211 SETTABLEKS                       R6 R19 K41 ["OnClick"]
      213 GETIMPORT                        R20 K16 [UDim2.new]
      215 LOADN                            R21 0
      216 LOADN                            R22 19
      217 LOADK                            R23 K56 [0.2]
      218 LOADN                            R24 0
      219 CALL                             R20 4 1
      220 SETTABLEKS                       R20 R19 K40 ["Position"]
      222 GETIMPORT                        R20 K16 [UDim2.new]
      224 LOADN                            R21 1
      225 LOADN                            R22 0
      226 LOADN                            R23 0
      227 GETTABLEKS                       R24 R2 K57 ["ButtonHeight"]
      229 CALL                             R20 4 1
      230 SETTABLEKS                       R20 R19 K12 ["Size"]
      232 NEWTABLE                         R20 0 1
      234 GETUPVAL                         R22 0
      235 GETTABLEKS                       R21 R22 K9 ["createElement"]
      237 GETUPVAL                         R22 5
      238 DUPTABLE                         R23 K59 [{"Cursor"}]
      239 LOADK                            R24 K60 ["PointingHand"]
      240 SETTABLEKS                       R24 R23 K58 ["Cursor"]
      242 CALL                             R21 2 -1
      243 SETLIST                          R20 R21 -1 [1]
      245 CALL                             R17 3 1
      246 SETTABLEKS                       R17 R16 K52 ["Button"]
      248 CALL                             R13 3 1
      249 SETTABLEKS                       R13 R12 K47 ["ButtonContainer"]
      251 CALL                             R9 3 -1
      252 RETURN                           R9 -1

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
