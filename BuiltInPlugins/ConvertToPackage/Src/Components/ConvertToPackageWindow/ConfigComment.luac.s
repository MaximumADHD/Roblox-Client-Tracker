PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Stylizer"]
        4 GETTABLEKS                       R3 R1 K2 ["Title"]
        6 GETTABLEKS                       R4 R1 K3 ["LayoutOrder"]
        8 GETTABLEKS                       R5 R1 K4 ["TotalHeight"]
       10 GETTABLEKS                       R6 R1 K5 ["CommentOn"]
       12 GETTABLEKS                       R7 R1 K6 ["CommentEnabled"]
       14 GETTABLEKS                       R8 R1 K7 ["ToggleCallback"]
       16 GETTABLEKS                       R9 R2 K8 ["publishAsset"]
       18 GETUPVAL                         R10 0
       19 GETTABLEKS                       R10 R10 K9 ["createElement"]
       21 LOADK                            R11 K10 ["Frame"]
       22 DUPTABLE                         R12 K14 [{"Size", "BackgroundTransparency", "BorderSizePixel", "LayoutOrder"}]
       23 GETIMPORT                        R13 K17 [UDim2.new]
       25 LOADN                            R14 1
       26 LOADN                            R15 0
       27 LOADN                            R16 0
       28 MOVE                             R17 R5
       29 CALL                             R13 4 1
       30 SETTABLEKS                       R13 R12 K11 ["Size"]
       32 LOADN                            R13 1
       33 SETTABLEKS                       R13 R12 K12 ["BackgroundTransparency"]
       35 LOADN                            R13 0
       36 SETTABLEKS                       R13 R12 K13 ["BorderSizePixel"]
       38 SETTABLEKS                       R4 R12 K3 ["LayoutOrder"]
       40 DUPTABLE                         R13 K20 [{"UIListLayout", "Title", "ToggleButton"}]
       41 GETUPVAL                         R14 0
       42 GETTABLEKS                       R14 R14 K9 ["createElement"]
       44 LOADK                            R15 K18 ["UIListLayout"]
       45 DUPTABLE                         R16 K26 [{"FillDirection", "HorizontalAlignment", "VerticalAlignment", "SortOrder", "Padding"}]
       46 GETIMPORT                        R17 K29 [Enum.FillDirection.Horizontal]
       48 SETTABLEKS                       R17 R16 K21 ["FillDirection"]
       50 GETIMPORT                        R17 K31 [Enum.HorizontalAlignment.Left]
       52 SETTABLEKS                       R17 R16 K22 ["HorizontalAlignment"]
       54 GETIMPORT                        R17 K33 [Enum.VerticalAlignment.Top]
       56 SETTABLEKS                       R17 R16 K23 ["VerticalAlignment"]
       58 GETIMPORT                        R17 K34 [Enum.SortOrder.LayoutOrder]
       60 SETTABLEKS                       R17 R16 K24 ["SortOrder"]
       62 GETIMPORT                        R17 K36 [UDim.new]
       64 LOADN                            R18 0
       65 LOADN                            R19 0
       66 CALL                             R17 2 1
       67 SETTABLEKS                       R17 R16 K25 ["Padding"]
       69 CALL                             R14 2 1
       70 SETTABLEKS                       R14 R13 K18 ["UIListLayout"]
       72 GETUPVAL                         R14 0
       73 GETTABLEKS                       R14 R14 K9 ["createElement"]
       75 LOADK                            R15 K37 ["TextLabel"]
       76 DUPTABLE                         R16 K44 [{"Size", "BackgroundTransparency", "BorderSizePixel", "Text", "TextXAlignment", "TextYAlignment", "TextSize", "TextColor3", "Font", "LayoutOrder"}]
       77 GETIMPORT                        R17 K17 [UDim2.new]
       79 LOADN                            R18 0
       80 GETUPVAL                         R19 1
       81 GETTABLEKS                       R19 R19 K45 ["TITLE_GUTTER_WIDTH"]
       83 LOADN                            R20 1
       84 LOADN                            R21 0
       85 CALL                             R17 4 1
       86 SETTABLEKS                       R17 R16 K11 ["Size"]
       88 LOADN                            R17 1
       89 SETTABLEKS                       R17 R16 K12 ["BackgroundTransparency"]
       91 LOADN                            R17 0
       92 SETTABLEKS                       R17 R16 K13 ["BorderSizePixel"]
       94 SETTABLEKS                       R3 R16 K38 ["Text"]
       96 GETIMPORT                        R17 K46 [Enum.TextXAlignment.Left]
       98 SETTABLEKS                       R17 R16 K39 ["TextXAlignment"]
      100 GETIMPORT                        R17 K47 [Enum.TextYAlignment.Top]
      102 SETTABLEKS                       R17 R16 K40 ["TextYAlignment"]
      104 GETUPVAL                         R17 1
      105 GETTABLEKS                       R17 R17 K48 ["FONT_SIZE_TITLE"]
      107 SETTABLEKS                       R17 R16 K41 ["TextSize"]
      109 GETTABLEKS                       R17 R9 K49 ["titleTextColor"]
      111 SETTABLEKS                       R17 R16 K42 ["TextColor3"]
      113 GETUPVAL                         R17 1
      114 GETTABLEKS                       R17 R17 K50 ["FONT"]
      116 SETTABLEKS                       R17 R16 K43 ["Font"]
      118 LOADN                            R17 1
      119 SETTABLEKS                       R17 R16 K3 ["LayoutOrder"]
      121 CALL                             R14 2 1
      122 SETTABLEKS                       R14 R13 K2 ["Title"]
      124 GETUPVAL                         R14 0
      125 GETTABLEKS                       R14 R14 K9 ["createElement"]
      127 GETUPVAL                         R15 2
      128 DUPTABLE                         R16 K54 [{"Disabled", "LayoutOrder", "OnClick", "Selected"}]
      129 NOT                              R17 R7
      130 SETTABLEKS                       R17 R16 K51 ["Disabled"]
      132 LOADN                            R17 2
      133 SETTABLEKS                       R17 R16 K3 ["LayoutOrder"]
      135 SETTABLEKS                       R8 R16 K52 ["OnClick"]
      137 SETTABLEKS                       R6 R16 K53 ["Selected"]
      139 CALL                             R14 2 1
      140 SETTABLEKS                       R14 R13 K19 ["ToggleButton"]
      142 CALL                             R10 3 -1
      143 RETURN                           R10 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETTABLEKS                       R0 R0 K2 ["Parent"]
       11 GETIMPORT                        R1 K1 [script]
       13 GETTABLEKS                       R1 R1 K2 ["Parent"]
       15 GETTABLEKS                       R1 R1 K2 ["Parent"]
       17 GETTABLEKS                       R1 R1 K2 ["Parent"]
       19 GETTABLEKS                       R1 R1 K2 ["Parent"]
       21 GETTABLEKS                       R2 R1 K3 ["Packages"]
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R2 K6 ["Framework"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R2 K7 ["Roact"]
       32 CALL                             R4 1 1
       33 GETTABLEKS                       R5 R3 K8 ["ContextServices"]
       35 GETTABLEKS                       R6 R5 K9 ["withContext"]
       37 GETTABLEKS                       R7 R1 K10 ["Src"]
       39 GETTABLEKS                       R7 R7 K11 ["Util"]
       41 GETIMPORT                        R8 K5 [require]
       43 GETTABLEKS                       R9 R7 K12 ["Constants"]
       45 CALL                             R8 1 1
       46 GETTABLEKS                       R9 R3 K13 ["UI"]
       48 GETTABLEKS                       R10 R9 K14 ["ToggleButton"]
       50 GETTABLEKS                       R11 R4 K15 ["PureComponent"]
       52 LOADK                            R13 K16 ["ConfigComment"]
       53 NAMECALL                         R11 R11 K17 ["extend"]
       55 CALL                             R11 2 1
       56 DUPCLOSURE                       R12 K18 [PROTO_0]
       57 CAPTURE                          VAL R4
       58 CAPTURE                          VAL R8
       59 CAPTURE                          VAL R10
       60 SETTABLEKS                       R12 R11 K19 ["render"]
       62 MOVE                             R12 R6
       63 DUPTABLE                         R13 K21 [{"Stylizer"}]
       64 GETTABLEKS                       R14 R5 K20 ["Stylizer"]
       66 SETTABLEKS                       R14 R13 K20 ["Stylizer"]
       68 CALL                             R12 1 1
       69 MOVE                             R13 R11
       70 CALL                             R12 1 1
       71 MOVE                             R11 R12
       72 RETURN                           R11 1
