PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Stylizer"]
        4 GETTABLEKS                       R3 R1 K2 ["Title"]
        6 GETTABLEKS                       R4 R1 K3 ["Header"]
        8 GETTABLEKS                       R5 R1 K4 ["Entries"]
       10 GETTABLEKS                       R6 R1 K5 ["Buttons"]
       12 GETTABLEKS                       R7 R1 K6 ["OnButtonClicked"]
       14 GETTABLEKS                       R8 R1 K7 ["OnClose"]
       16 GETUPVAL                         R9 0
       17 GETTABLEKS                       R9 R9 K8 ["new"]
       19 CALL                             R9 0 1
       20 DUPTABLE                         R10 K11 [{"Layout", "Padding", "Header"}]
       21 GETUPVAL                         R11 1
       22 GETTABLEKS                       R11 R11 K12 ["createElement"]
       24 LOADK                            R12 K13 ["UIListLayout"]
       25 DUPTABLE                         R13 K15 [{"Padding", "SortOrder"}]
       26 GETIMPORT                        R14 K17 [UDim.new]
       28 LOADN                            R15 0
       29 LOADN                            R16 45
       30 CALL                             R14 2 1
       31 SETTABLEKS                       R14 R13 K10 ["Padding"]
       33 GETIMPORT                        R14 K20 [Enum.SortOrder.LayoutOrder]
       35 SETTABLEKS                       R14 R13 K14 ["SortOrder"]
       37 CALL                             R11 2 1
       38 SETTABLEKS                       R11 R10 K9 ["Layout"]
       40 GETUPVAL                         R11 1
       41 GETTABLEKS                       R11 R11 K12 ["createElement"]
       43 LOADK                            R12 K21 ["UIPadding"]
       44 DUPTABLE                         R13 K25 [{"PaddingTop", "PaddingLeft", "PaddingRight"}]
       45 GETIMPORT                        R14 K17 [UDim.new]
       47 LOADN                            R15 0
       48 LOADN                            R16 10
       49 CALL                             R14 2 1
       50 SETTABLEKS                       R14 R13 K22 ["PaddingTop"]
       52 GETIMPORT                        R14 K17 [UDim.new]
       54 LOADN                            R15 0
       55 LOADN                            R16 30
       56 CALL                             R14 2 1
       57 SETTABLEKS                       R14 R13 K23 ["PaddingLeft"]
       59 GETIMPORT                        R14 K17 [UDim.new]
       61 LOADN                            R15 0
       62 LOADN                            R16 30
       63 CALL                             R14 2 1
       64 SETTABLEKS                       R14 R13 K24 ["PaddingRight"]
       66 CALL                             R11 2 1
       67 SETTABLEKS                       R11 R10 K10 ["Padding"]
       69 GETUPVAL                         R11 1
       70 GETTABLEKS                       R11 R11 K12 ["createElement"]
       72 LOADK                            R12 K26 ["TextLabel"]
       73 DUPTABLE                         R13 K38 [{["LayoutOrder"], ["AutomaticSize"], ["BackgroundTransparency"] = 1, ["Text"], ["TextXAlignment"], ["TextWrapped"] = True, ["Font"], ["TextSize"] = 22, ["TextColor3"]}]
       74 NAMECALL                         R14 R9 K39 ["getNextOrder"]
       76 CALL                             R14 1 1
       77 SETTABLEKS                       R14 R13 K19 ["LayoutOrder"]
       79 GETIMPORT                        R14 K41 [Enum.AutomaticSize.XY]
       81 SETTABLEKS                       R14 R13 K27 ["AutomaticSize"]
       83 SETTABLEKS                       R4 R13 K30 ["Text"]
       85 GETIMPORT                        R14 K43 [Enum.TextXAlignment.Left]
       87 SETTABLEKS                       R14 R13 K31 ["TextXAlignment"]
       89 GETTABLEKS                       R14 R2 K44 ["listDialog"]
       91 GETTABLEKS                       R14 R14 K45 ["font"]
       93 SETTABLEKS                       R14 R13 K34 ["Font"]
       95 GETTABLEKS                       R14 R2 K44 ["listDialog"]
       97 GETTABLEKS                       R14 R14 K46 ["textColor"]
       99 SETTABLEKS                       R14 R13 K37 ["TextColor3"]
      101 CALL                             R11 2 1
      102 SETTABLEKS                       R11 R10 K3 ["Header"]
      104 GETUPVAL                         R11 1
      105 GETTABLEKS                       R11 R11 K12 ["createElement"]
      107 GETUPVAL                         R12 2
      108 DUPTABLE                         R13 K49 [{"Items", "LayoutOrder", "TextTruncate"}]
      109 SETTABLEKS                       R5 R13 K47 ["Items"]
      111 NAMECALL                         R14 R9 K39 ["getNextOrder"]
      113 CALL                             R14 1 1
      114 SETTABLEKS                       R14 R13 K19 ["LayoutOrder"]
      116 GETIMPORT                        R14 K51 [Enum.TextTruncate.AtEnd]
      118 SETTABLEKS                       R14 R13 K48 ["TextTruncate"]
      120 CALL                             R11 2 1
      121 SETTABLEKS                       R11 R10 K52 ["List"]
      123 GETUPVAL                         R11 1
      124 GETTABLEKS                       R11 R11 K12 ["createElement"]
      126 GETUPVAL                         R12 3
      127 DUPTABLE                         R13 K59 [{["Title"], ["Modal"] = True, ["Buttons"], ["MinContentSize"], ["ButtonHorizontalAlignment"], ["Style"] = "LargeCenterButtons", ["OnButtonPressed"], ["OnClose"]}]
      128 SETTABLEKS                       R3 R13 K2 ["Title"]
      130 SETTABLEKS                       R6 R13 K5 ["Buttons"]
      132 GETTABLEKS                       R14 R0 K0 ["props"]
      134 GETTABLEKS                       R14 R14 K60 ["minContentSize"]
      136 JUMPIF                           R14 ; [+5]
      137 GETIMPORT                        R14 K62 [Vector2.new]
      139 LOADN                            R15 450
      140 LOADN                            R16 220
      141 CALL                             R14 2 1
      142 SETTABLEKS                       R14 R13 K54 ["MinContentSize"]
      144 GETIMPORT                        R14 K65 [Enum.HorizontalAlignment.Center]
      146 SETTABLEKS                       R14 R13 K55 ["ButtonHorizontalAlignment"]
      148 SETTABLEKS                       R7 R13 K58 ["OnButtonPressed"]
      150 SETTABLEKS                       R8 R13 K7 ["OnClose"]
      152 MOVE                             R14 R10
      153 CALL                             R11 3 -1
      154 RETURN                           R11 -1

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
       29 GETTABLEKS                       R6 R5 K11 ["BulletList"]
       31 GETTABLEKS                       R7 R2 K12 ["Util"]
       33 GETTABLEKS                       R7 R7 K13 ["LayoutOrderIterator"]
       35 GETTABLEKS                       R8 R5 K14 ["StyledDialog"]
       37 GETTABLEKS                       R9 R1 K15 ["PureComponent"]
       39 LOADK                            R11 K16 ["ListDialog"]
       40 NAMECALL                         R9 R9 K17 ["extend"]
       42 CALL                             R9 2 1
       43 DUPCLOSURE                       R10 K18 [PROTO_0]
       44 CAPTURE                          VAL R7
       45 CAPTURE                          VAL R1
       46 CAPTURE                          VAL R6
       47 CAPTURE                          VAL R8
       48 SETTABLEKS                       R10 R9 K19 ["render"]
       50 MOVE                             R10 R4
       51 DUPTABLE                         R11 K21 [{"Stylizer"}]
       52 GETTABLEKS                       R12 R3 K20 ["Stylizer"]
       54 SETTABLEKS                       R12 R11 K20 ["Stylizer"]
       56 CALL                             R10 1 1
       57 MOVE                             R11 R9
       58 CALL                             R10 1 1
       59 MOVE                             R9 R10
       60 RETURN                           R9 1
