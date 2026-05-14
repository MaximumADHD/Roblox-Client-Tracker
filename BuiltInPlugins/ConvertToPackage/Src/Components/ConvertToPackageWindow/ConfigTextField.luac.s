PROTO_0:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R3 K1 [{"currentContent"}]
        2 SETTABLEKS                       R0 R3 K0 ["currentContent"]
        4 NAMECALL                         R1 R1 K2 ["setState"]
        6 CALL                             R1 2 0
        7 GETUPVAL                         R1 0
        8 GETTABLEKS                       R1 R1 K3 ["props"]
       10 GETTABLEKS                       R1 R1 K4 ["TextChangeCallBack"]
       12 MOVE                             R2 R0
       13 CALL                             R1 1 0
       14 RETURN                           R0 0

PROTO_1:
        0 NEWTABLE                         R2 0 0
        2 SETTABLEKS                       R2 R0 K0 ["state"]
        4 NEWCLOSURE                       R2 P0
        5 CAPTURE                          VAL R0
        6 SETTABLEKS                       R2 R0 K1 ["onTextChanged"]
        8 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R0 K1 ["state"]
        4 GETTABLEKS                       R3 R1 K2 ["Stylizer"]
        6 GETTABLEKS                       R4 R1 K3 ["Title"]
        8 GETTABLEKS                       R5 R1 K4 ["TotalHeight"]
       10 GETTABLEKS                       R6 R1 K5 ["LayoutOrder"]
       12 GETTABLEKS                       R7 R1 K6 ["MaxCount"]
       14 GETTABLEKS                       R9 R1 K8 ["TextContent"]
       16 ORK                              R8 R9 K7 [""]
       17 GETTABLEKS                       R10 R2 K9 ["currentContent"]
       19 OR                               R9 R10 R8
       20 GETTABLEKS                       R10 R3 K10 ["publishAsset"]
       22 GETUPVAL                         R11 0
       23 GETTABLEKS                       R11 R11 K11 ["createElement"]
       25 LOADK                            R12 K12 ["Frame"]
       26 DUPTABLE                         R13 K16 [{"Size", "BackgroundTransparency", "BorderSizePixel", "LayoutOrder"}]
       27 GETIMPORT                        R14 K19 [UDim2.new]
       29 LOADN                            R15 1
       30 LOADN                            R16 0
       31 LOADN                            R17 0
       32 MOVE                             R18 R5
       33 CALL                             R14 4 1
       34 SETTABLEKS                       R14 R13 K13 ["Size"]
       36 LOADN                            R14 1
       37 SETTABLEKS                       R14 R13 K14 ["BackgroundTransparency"]
       39 LOADN                            R14 0
       40 SETTABLEKS                       R14 R13 K15 ["BorderSizePixel"]
       42 SETTABLEKS                       R6 R13 K5 ["LayoutOrder"]
       44 DUPTABLE                         R14 K22 [{"UIListLayout", "Title", "TextField"}]
       45 GETUPVAL                         R15 0
       46 GETTABLEKS                       R15 R15 K11 ["createElement"]
       48 LOADK                            R16 K20 ["UIListLayout"]
       49 DUPTABLE                         R17 K28 [{"FillDirection", "HorizontalAlignment", "VerticalAlignment", "SortOrder", "Padding"}]
       50 GETIMPORT                        R18 K31 [Enum.FillDirection.Horizontal]
       52 SETTABLEKS                       R18 R17 K23 ["FillDirection"]
       54 GETIMPORT                        R18 K33 [Enum.HorizontalAlignment.Left]
       56 SETTABLEKS                       R18 R17 K24 ["HorizontalAlignment"]
       58 GETIMPORT                        R18 K35 [Enum.VerticalAlignment.Top]
       60 SETTABLEKS                       R18 R17 K25 ["VerticalAlignment"]
       62 GETIMPORT                        R18 K36 [Enum.SortOrder.LayoutOrder]
       64 SETTABLEKS                       R18 R17 K26 ["SortOrder"]
       66 GETIMPORT                        R18 K38 [UDim.new]
       68 LOADN                            R19 0
       69 LOADN                            R20 0
       70 CALL                             R18 2 1
       71 SETTABLEKS                       R18 R17 K27 ["Padding"]
       73 CALL                             R15 2 1
       74 SETTABLEKS                       R15 R14 K20 ["UIListLayout"]
       76 GETUPVAL                         R15 0
       77 GETTABLEKS                       R15 R15 K11 ["createElement"]
       79 LOADK                            R16 K39 ["TextLabel"]
       80 DUPTABLE                         R17 K46 [{"Size", "BackgroundTransparency", "BorderSizePixel", "Text", "TextXAlignment", "TextYAlignment", "TextSize", "TextColor3", "Font", "LayoutOrder"}]
       81 GETIMPORT                        R18 K19 [UDim2.new]
       83 LOADN                            R19 0
       84 GETUPVAL                         R20 1
       85 GETTABLEKS                       R20 R20 K47 ["TITLE_GUTTER_WIDTH"]
       87 LOADN                            R21 1
       88 LOADN                            R22 0
       89 CALL                             R18 4 1
       90 SETTABLEKS                       R18 R17 K13 ["Size"]
       92 LOADN                            R18 1
       93 SETTABLEKS                       R18 R17 K14 ["BackgroundTransparency"]
       95 LOADN                            R18 0
       96 SETTABLEKS                       R18 R17 K15 ["BorderSizePixel"]
       98 SETTABLEKS                       R4 R17 K40 ["Text"]
      100 GETIMPORT                        R18 K48 [Enum.TextXAlignment.Left]
      102 SETTABLEKS                       R18 R17 K41 ["TextXAlignment"]
      104 GETIMPORT                        R18 K49 [Enum.TextYAlignment.Top]
      106 SETTABLEKS                       R18 R17 K42 ["TextYAlignment"]
      108 GETUPVAL                         R18 1
      109 GETTABLEKS                       R18 R18 K50 ["FONT_SIZE_TITLE"]
      111 SETTABLEKS                       R18 R17 K43 ["TextSize"]
      113 GETTABLEKS                       R18 R10 K51 ["titleTextColor"]
      115 SETTABLEKS                       R18 R17 K44 ["TextColor3"]
      117 GETUPVAL                         R18 1
      118 GETTABLEKS                       R18 R18 K52 ["FONT"]
      120 SETTABLEKS                       R18 R17 K45 ["Font"]
      122 LOADN                            R18 1
      123 SETTABLEKS                       R18 R17 K5 ["LayoutOrder"]
      125 CALL                             R15 2 1
      126 SETTABLEKS                       R15 R14 K3 ["Title"]
      128 GETUPVAL                         R15 0
      129 GETTABLEKS                       R15 R15 K11 ["createElement"]
      131 GETUPVAL                         R16 2
      132 DUPTABLE                         R17 K56 [{"LayoutOrder", "MaxLength", "MultiLine", "OnTextChanged", "Text", "Size"}]
      133 LOADN                            R18 2
      134 SETTABLEKS                       R18 R17 K5 ["LayoutOrder"]
      136 SETTABLEKS                       R7 R17 K53 ["MaxLength"]
      138 LOADN                            R19 50
      139 JUMPIFLT                         R19 R7 ; [+2]
      141 LOADB                            R18 0 +1
      142 LOADB                            R18 1
      143 SETTABLEKS                       R18 R17 K54 ["MultiLine"]
      145 GETTABLEKS                       R18 R0 K57 ["onTextChanged"]
      147 SETTABLEKS                       R18 R17 K55 ["OnTextChanged"]
      149 SETTABLEKS                       R9 R17 K40 ["Text"]
      151 GETIMPORT                        R18 K19 [UDim2.new]
      153 LOADN                            R19 1
      154 GETUPVAL                         R21 1
      155 GETTABLEKS                       R21 R21 K47 ["TITLE_GUTTER_WIDTH"]
      157 MINUS                            R20 R21
      158 LOADN                            R21 0
      159 SUBK                             R23 R5 K59 [40]
      160 SUBK                             R22 R23 K58 [20]
      161 CALL                             R18 4 1
      162 SETTABLEKS                       R18 R17 K13 ["Size"]
      164 CALL                             R15 2 1
      165 SETTABLEKS                       R15 R14 K21 ["TextField"]
      167 CALL                             R11 3 -1
      168 RETURN                           R11 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETTABLEKS                       R0 R0 K2 ["Parent"]
       11 GETTABLEKS                       R1 R0 K3 ["Packages"]
       13 GETIMPORT                        R2 K5 [require]
       15 GETTABLEKS                       R3 R1 K6 ["Roact"]
       17 CALL                             R2 1 1
       18 GETIMPORT                        R3 K5 [require]
       20 GETTABLEKS                       R4 R1 K7 ["Framework"]
       22 CALL                             R3 1 1
       23 GETTABLEKS                       R4 R3 K8 ["ContextServices"]
       25 GETTABLEKS                       R5 R4 K9 ["withContext"]
       27 GETTABLEKS                       R6 R3 K10 ["UI"]
       29 GETTABLEKS                       R7 R6 K11 ["TextInput"]
       31 GETTABLEKS                       R8 R0 K12 ["Src"]
       33 GETTABLEKS                       R8 R8 K13 ["Util"]
       35 GETIMPORT                        R9 K5 [require]
       37 GETTABLEKS                       R10 R8 K14 ["Constants"]
       39 CALL                             R9 1 1
       40 GETTABLEKS                       R10 R2 K15 ["PureComponent"]
       42 LOADK                            R12 K16 ["ConfigTextField"]
       43 NAMECALL                         R10 R10 K17 ["extend"]
       45 CALL                             R10 2 1
       46 DUPCLOSURE                       R11 K18 [PROTO_1]
       47 SETTABLEKS                       R11 R10 K19 ["init"]
       49 DUPCLOSURE                       R11 K20 [PROTO_2]
       50 CAPTURE                          VAL R2
       51 CAPTURE                          VAL R9
       52 CAPTURE                          VAL R7
       53 SETTABLEKS                       R11 R10 K21 ["render"]
       55 MOVE                             R11 R5
       56 DUPTABLE                         R12 K23 [{"Stylizer"}]
       57 GETTABLEKS                       R13 R4 K22 ["Stylizer"]
       59 SETTABLEKS                       R13 R12 K22 ["Stylizer"]
       61 CALL                             R11 1 1
       62 MOVE                             R12 R10
       63 CALL                             R11 1 1
       64 MOVE                             R10 R11
       65 RETURN                           R10 1
