PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Stylizer"]
        4 GETTABLEKS                       R3 R1 K2 ["Title"]
        6 GETTABLEKS                       R4 R1 K3 ["Header"]
        8 GETTABLEKS                       R5 R1 K4 ["Entries"]
       10 GETTABLEKS                       R6 R1 K5 ["Buttons"]
       12 GETTABLEKS                       R7 R1 K6 ["OnButtonClicked"]
       14 GETTABLEKS                       R8 R1 K7 ["OnClose"]
       16 GETUPVAL                         R10 0
       17 GETTABLEKS                       R9 R10 K8 ["new"]
       19 CALL                             R9 0 1
       20 DUPTABLE                         R10 K11 [{"Layout", "Padding", "Header"}]
       21 GETUPVAL                         R12 1
       22 GETTABLEKS                       R11 R12 K12 ["createElement"]
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
       40 GETUPVAL                         R12 1
       41 GETTABLEKS                       R11 R12 K12 ["createElement"]
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
       69 GETUPVAL                         R12 1
       70 GETTABLEKS                       R11 R12 K12 ["createElement"]
       72 LOADK                            R12 K26 ["TextLabel"]
       73 DUPTABLE                         R13 K35 [{"LayoutOrder", "AutomaticSize", "BackgroundTransparency", "Text", "TextXAlignment", "TextWrapped", "Font", "TextSize", "TextColor3"}]
       74 NAMECALL                         R14 R9 K36 ["getNextOrder"]
       76 CALL                             R14 1 1
       77 SETTABLEKS                       R14 R13 K19 ["LayoutOrder"]
       79 GETIMPORT                        R14 K38 [Enum.AutomaticSize.XY]
       81 SETTABLEKS                       R14 R13 K27 ["AutomaticSize"]
       83 LOADN                            R14 1
       84 SETTABLEKS                       R14 R13 K28 ["BackgroundTransparency"]
       86 SETTABLEKS                       R4 R13 K29 ["Text"]
       88 GETIMPORT                        R14 K40 [Enum.TextXAlignment.Left]
       90 SETTABLEKS                       R14 R13 K30 ["TextXAlignment"]
       92 LOADB                            R14 1
       93 SETTABLEKS                       R14 R13 K31 ["TextWrapped"]
       95 GETTABLEKS                       R15 R2 K41 ["listDialog"]
       97 GETTABLEKS                       R14 R15 K42 ["font"]
       99 SETTABLEKS                       R14 R13 K32 ["Font"]
      101 LOADN                            R14 22
      102 SETTABLEKS                       R14 R13 K33 ["TextSize"]
      104 GETTABLEKS                       R15 R2 K41 ["listDialog"]
      106 GETTABLEKS                       R14 R15 K43 ["textColor"]
      108 SETTABLEKS                       R14 R13 K34 ["TextColor3"]
      110 CALL                             R11 2 1
      111 SETTABLEKS                       R11 R10 K3 ["Header"]
      113 GETUPVAL                         R12 1
      114 GETTABLEKS                       R11 R12 K12 ["createElement"]
      116 GETUPVAL                         R12 2
      117 DUPTABLE                         R13 K46 [{"Items", "LayoutOrder", "TextTruncate"}]
      118 SETTABLEKS                       R5 R13 K44 ["Items"]
      120 NAMECALL                         R14 R9 K36 ["getNextOrder"]
      122 CALL                             R14 1 1
      123 SETTABLEKS                       R14 R13 K19 ["LayoutOrder"]
      125 GETIMPORT                        R14 K48 [Enum.TextTruncate.AtEnd]
      127 SETTABLEKS                       R14 R13 K45 ["TextTruncate"]
      129 CALL                             R11 2 1
      130 SETTABLEKS                       R11 R10 K49 ["List"]
      132 GETUPVAL                         R12 1
      133 GETTABLEKS                       R11 R12 K12 ["createElement"]
      135 GETUPVAL                         R12 3
      136 DUPTABLE                         R13 K55 [{"Title", "Modal", "Buttons", "MinContentSize", "ButtonHorizontalAlignment", "Style", "OnButtonPressed", "OnClose"}]
      137 SETTABLEKS                       R3 R13 K2 ["Title"]
      139 LOADB                            R14 1
      140 SETTABLEKS                       R14 R13 K50 ["Modal"]
      142 SETTABLEKS                       R6 R13 K5 ["Buttons"]
      144 GETTABLEKS                       R15 R0 K0 ["props"]
      146 GETTABLEKS                       R14 R15 K56 ["minContentSize"]
      148 JUMPIF                           R14 ; [+5]
      149 GETIMPORT                        R14 K58 [Vector2.new]
      151 LOADN                            R15 194
      152 LOADN                            R16 220
      153 CALL                             R14 2 1
      154 SETTABLEKS                       R14 R13 K51 ["MinContentSize"]
      156 GETIMPORT                        R14 K61 [Enum.HorizontalAlignment.Center]
      158 SETTABLEKS                       R14 R13 K52 ["ButtonHorizontalAlignment"]
      160 LOADK                            R14 K62 ["LargeCenterButtons"]
      161 SETTABLEKS                       R14 R13 K53 ["Style"]
      163 SETTABLEKS                       R7 R13 K54 ["OnButtonPressed"]
      165 SETTABLEKS                       R8 R13 K7 ["OnClose"]
      167 MOVE                             R14 R10
      168 CALL                             R11 3 -1
      169 RETURN                           R11 -1

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
       29 GETTABLEKS                       R6 R5 K11 ["BulletList"]
       31 GETTABLEKS                       R8 R2 K12 ["Util"]
       33 GETTABLEKS                       R7 R8 K13 ["LayoutOrderIterator"]
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
