PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Stylizer"]
        4 GETTABLEKS                       R3 R1 K2 ["Localization"]
        6 GETTABLEKS                       R5 R1 K4 ["LayoutOrder"]
        8 ORK                              R4 R5 K3 [-1]
        9 GETTABLEKS                       R5 R1 K5 ["Padding"]
       11 JUMPIF                           R5 ; [+2]
       12 GETTABLEKS                       R5 R2 K5 ["Padding"]
       14 GETTABLEKS                       R6 R1 K6 ["Spacing"]
       16 JUMPIF                           R6 ; [+2]
       17 GETTABLEKS                       R6 R2 K6 ["Spacing"]
       19 GETTABLEKS                       R7 R1 K7 ["RowHeight"]
       21 JUMPIF                           R7 ; [+2]
       22 GETTABLEKS                       R7 R2 K7 ["RowHeight"]
       24 GETTABLEKS                       R8 R1 K8 ["IsChecked"]
       26 GETTABLEKS                       R9 R1 K9 ["OnCheckboxClick"]
       28 GETTABLEKS                       R10 R1 K10 ["OnResetPlugin"]
       30 GETUPVAL                         R11 0
       31 GETTABLEKS                       R11 R11 K11 ["new"]
       33 CALL                             R11 0 1
       34 GETUPVAL                         R12 1
       35 GETTABLEKS                       R12 R12 K12 ["createElement"]
       37 GETUPVAL                         R13 2
       38 DUPTABLE                         R14 K14 [{"Size", "LayoutOrder"}]
       39 GETIMPORT                        R15 K16 [UDim2.new]
       41 LOADN                            R16 1
       42 LOADN                            R17 0
       43 LOADN                            R18 0
       44 MOVE                             R19 R7
       45 CALL                             R15 4 1
       46 SETTABLEKS                       R15 R14 K13 ["Size"]
       48 SETTABLEKS                       R4 R14 K4 ["LayoutOrder"]
       50 NEWTABLE                         R15 0 2
       52 GETUPVAL                         R16 1
       53 GETTABLEKS                       R16 R16 K12 ["createElement"]
       55 GETUPVAL                         R17 2
       56 DUPTABLE                         R18 K20 [{"Size", "HorizontalAlignment", "VerticalAlignment", "Layout", "Padding", "Spacing"}]
       57 GETIMPORT                        R19 K16 [UDim2.new]
       59 LOADN                            R20 1
       60 LOADN                            R21 0
       61 LOADN                            R22 0
       62 MOVE                             R23 R7
       63 CALL                             R19 4 1
       64 SETTABLEKS                       R19 R18 K13 ["Size"]
       66 GETIMPORT                        R19 K23 [Enum.HorizontalAlignment.Left]
       68 SETTABLEKS                       R19 R18 K17 ["HorizontalAlignment"]
       70 GETIMPORT                        R19 K25 [Enum.VerticalAlignment.Center]
       72 SETTABLEKS                       R19 R18 K18 ["VerticalAlignment"]
       74 GETIMPORT                        R19 K28 [Enum.FillDirection.Horizontal]
       76 SETTABLEKS                       R19 R18 K19 ["Layout"]
       78 SETTABLEKS                       R5 R18 K5 ["Padding"]
       80 SETTABLEKS                       R6 R18 K6 ["Spacing"]
       82 DUPTABLE                         R19 K31 [{"Checkbox", "SelectAllLabel"}]
       83 GETUPVAL                         R20 1
       84 GETTABLEKS                       R20 R20 K12 ["createElement"]
       86 GETUPVAL                         R21 3
       87 DUPTABLE                         R22 K34 [{"LayoutOrder", "Checked", "OnClick"}]
       88 NAMECALL                         R23 R11 K35 ["getNextOrder"]
       90 CALL                             R23 1 1
       91 SETTABLEKS                       R23 R22 K4 ["LayoutOrder"]
       93 SETTABLEKS                       R8 R22 K32 ["Checked"]
       95 SETTABLEKS                       R9 R22 K33 ["OnClick"]
       97 CALL                             R20 2 1
       98 SETTABLEKS                       R20 R19 K29 ["Checkbox"]
      100 GETUPVAL                         R20 1
      101 GETTABLEKS                       R20 R20 K12 ["createElement"]
      103 GETUPVAL                         R21 4
      104 DUPTABLE                         R22 K39 [{"LayoutOrder", "Text", "Style", "AutomaticSize"}]
      105 NAMECALL                         R23 R11 K35 ["getNextOrder"]
      107 CALL                             R23 1 1
      108 SETTABLEKS                       R23 R22 K4 ["LayoutOrder"]
      110 LOADK                            R25 K40 ["ScriptConversion"]
      111 LOADK                            R26 K41 ["SelectAll"]
      112 NAMECALL                         R23 R3 K42 ["getText"]
      114 CALL                             R23 3 1
      115 SETTABLEKS                       R23 R22 K36 ["Text"]
      117 GETTABLEKS                       R23 R2 K43 ["TextConfig"]
      119 SETTABLEKS                       R23 R22 K37 ["Style"]
      121 GETIMPORT                        R23 K45 [Enum.AutomaticSize.XY]
      123 SETTABLEKS                       R23 R22 K38 ["AutomaticSize"]
      125 CALL                             R20 2 1
      126 SETTABLEKS                       R20 R19 K30 ["SelectAllLabel"]
      128 CALL                             R16 3 1
      129 GETUPVAL                         R17 1
      130 GETTABLEKS                       R17 R17 K12 ["createElement"]
      132 GETUPVAL                         R18 5
      133 DUPTABLE                         R19 K53 [{["LeftIcon"], ["Cursor"] = "PointingHand", ["OnClick"], ["Size"], ["AnchorPoint"], ["Position"], ["BackgroundStyle"], ["TooltipText"]}]
      134 GETTABLEKS                       R20 R2 K54 ["RefreshButton"]
      136 GETTABLEKS                       R20 R20 K55 ["Icon"]
      138 SETTABLEKS                       R20 R19 K46 ["LeftIcon"]
      140 SETTABLEKS                       R10 R19 K33 ["OnClick"]
      142 GETTABLEKS                       R20 R2 K54 ["RefreshButton"]
      144 GETTABLEKS                       R20 R20 K13 ["Size"]
      146 SETTABLEKS                       R20 R19 K13 ["Size"]
      148 GETIMPORT                        R20 K57 [Vector2.new]
      150 LOADN                            R21 1
      151 LOADK                            R22 K58 [0.5]
      152 CALL                             R20 2 1
      153 SETTABLEKS                       R20 R19 K49 ["AnchorPoint"]
      155 GETIMPORT                        R20 K16 [UDim2.new]
      157 LOADN                            R21 1
      158 LOADN                            R22 -16
      159 LOADK                            R23 K58 [0.5]
      160 LOADN                            R24 0
      161 CALL                             R20 4 1
      162 SETTABLEKS                       R20 R19 K50 ["Position"]
      164 GETTABLEKS                       R20 R2 K54 ["RefreshButton"]
      166 GETTABLEKS                       R20 R20 K51 ["BackgroundStyle"]
      168 SETTABLEKS                       R20 R19 K51 ["BackgroundStyle"]
      170 LOADK                            R22 K59 ["Summary"]
      171 LOADK                            R23 K60 ["Refresh"]
      172 NAMECALL                         R20 R3 K42 ["getText"]
      174 CALL                             R20 3 1
      175 SETTABLEKS                       R20 R19 K52 ["TooltipText"]
      177 CALL                             R17 2 -1
      178 SETLIST                          R15 R16 -1 [1]
      180 CALL                             R12 3 -1
      181 RETURN                           R12 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["R15Migrator"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["Roact"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R3 R1 K9 ["ContextServices"]
       23 GETTABLEKS                       R4 R1 K10 ["UI"]
       25 GETTABLEKS                       R5 R4 K11 ["Pane"]
       27 GETTABLEKS                       R6 R4 K12 ["Checkbox"]
       29 GETTABLEKS                       R7 R4 K13 ["TextLabel"]
       31 GETTABLEKS                       R8 R4 K14 ["IconButton"]
       33 GETTABLEKS                       R9 R1 K15 ["Util"]
       35 GETTABLEKS                       R10 R9 K16 ["LayoutOrderIterator"]
       37 GETTABLEKS                       R11 R2 K17 ["PureComponent"]
       39 LOADK                            R13 K18 ["SelectAllRow"]
       40 NAMECALL                         R11 R11 K19 ["extend"]
       42 CALL                             R11 2 1
       43 DUPCLOSURE                       R12 K20 [PROTO_0]
       44 CAPTURE                          VAL R10
       45 CAPTURE                          VAL R2
       46 CAPTURE                          VAL R5
       47 CAPTURE                          VAL R6
       48 CAPTURE                          VAL R7
       49 CAPTURE                          VAL R8
       50 SETTABLEKS                       R12 R11 K21 ["render"]
       52 GETTABLEKS                       R12 R3 K22 ["withContext"]
       54 DUPTABLE                         R13 K25 [{"Stylizer", "Localization"}]
       55 GETTABLEKS                       R14 R3 K23 ["Stylizer"]
       57 SETTABLEKS                       R14 R13 K23 ["Stylizer"]
       59 GETTABLEKS                       R14 R3 K24 ["Localization"]
       61 SETTABLEKS                       R14 R13 K24 ["Localization"]
       63 CALL                             R12 1 1
       64 MOVE                             R13 R11
       65 CALL                             R12 1 1
       66 MOVE                             R11 R12
       67 RETURN                           R11 1
