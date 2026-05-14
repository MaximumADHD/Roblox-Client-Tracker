PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R1 R0 K1 ["ToggleCallback"]
        5 GETTABLEKS                       R3 R0 K2 ["CommentOn"]
        7 NOT                              R2 R3
        8 CALL                             R1 1 0
        9 RETURN                           R0 0

PROTO_1:
        0 NEWCLOSURE                       R2 P0
        1 CAPTURE                          VAL R0
        2 SETTABLEKS                       R2 R0 K0 ["toggleCallback"]
        4 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Title"]
        4 GETTABLEKS                       R3 R1 K2 ["LayoutOrder"]
        6 GETTABLEKS                       R4 R1 K3 ["TotalHeight"]
        8 GETTABLEKS                       R5 R1 K4 ["CommentOn"]
       10 GETTABLEKS                       R6 R1 K5 ["CommentEnabled"]
       12 GETTABLEKS                       R7 R1 K6 ["ToggleCallback"]
       14 GETTABLEKS                       R8 R0 K0 ["props"]
       16 GETTABLEKS                       R8 R8 K7 ["Stylizer"]
       18 GETTABLEKS                       R9 R8 K8 ["publishAsset"]
       20 GETUPVAL                         R10 0
       21 GETTABLEKS                       R10 R10 K9 ["createElement"]
       23 LOADK                            R11 K10 ["Frame"]
       24 DUPTABLE                         R12 K14 [{"Size", "BackgroundTransparency", "BorderSizePixel", "LayoutOrder"}]
       25 GETIMPORT                        R13 K17 [UDim2.new]
       27 LOADN                            R14 1
       28 LOADN                            R15 0
       29 LOADN                            R16 0
       30 MOVE                             R17 R4
       31 CALL                             R13 4 1
       32 SETTABLEKS                       R13 R12 K11 ["Size"]
       34 LOADN                            R13 1
       35 SETTABLEKS                       R13 R12 K12 ["BackgroundTransparency"]
       37 LOADN                            R13 0
       38 SETTABLEKS                       R13 R12 K13 ["BorderSizePixel"]
       40 SETTABLEKS                       R3 R12 K2 ["LayoutOrder"]
       42 DUPTABLE                         R13 K20 [{"UIListLayout", "Title", "ToggleButton"}]
       43 GETUPVAL                         R14 0
       44 GETTABLEKS                       R14 R14 K9 ["createElement"]
       46 LOADK                            R15 K18 ["UIListLayout"]
       47 DUPTABLE                         R16 K26 [{"FillDirection", "HorizontalAlignment", "VerticalAlignment", "SortOrder", "Padding"}]
       48 GETIMPORT                        R17 K29 [Enum.FillDirection.Horizontal]
       50 SETTABLEKS                       R17 R16 K21 ["FillDirection"]
       52 GETIMPORT                        R17 K31 [Enum.HorizontalAlignment.Left]
       54 SETTABLEKS                       R17 R16 K22 ["HorizontalAlignment"]
       56 GETIMPORT                        R17 K33 [Enum.VerticalAlignment.Top]
       58 SETTABLEKS                       R17 R16 K23 ["VerticalAlignment"]
       60 GETIMPORT                        R17 K34 [Enum.SortOrder.LayoutOrder]
       62 SETTABLEKS                       R17 R16 K24 ["SortOrder"]
       64 GETIMPORT                        R17 K36 [UDim.new]
       66 LOADN                            R18 0
       67 LOADN                            R19 0
       68 CALL                             R17 2 1
       69 SETTABLEKS                       R17 R16 K25 ["Padding"]
       71 CALL                             R14 2 1
       72 SETTABLEKS                       R14 R13 K18 ["UIListLayout"]
       74 GETUPVAL                         R14 0
       75 GETTABLEKS                       R14 R14 K9 ["createElement"]
       77 LOADK                            R15 K37 ["TextLabel"]
       78 DUPTABLE                         R16 K44 [{"Size", "BackgroundTransparency", "BorderSizePixel", "Text", "TextXAlignment", "TextYAlignment", "TextSize", "TextColor3", "Font", "LayoutOrder"}]
       79 GETIMPORT                        R17 K17 [UDim2.new]
       81 LOADN                            R18 0
       82 GETUPVAL                         R19 1
       83 GETTABLEKS                       R19 R19 K45 ["TITLE_GUTTER_WIDTH"]
       85 LOADN                            R20 1
       86 LOADN                            R21 0
       87 CALL                             R17 4 1
       88 SETTABLEKS                       R17 R16 K11 ["Size"]
       90 LOADN                            R17 1
       91 SETTABLEKS                       R17 R16 K12 ["BackgroundTransparency"]
       93 LOADN                            R17 0
       94 SETTABLEKS                       R17 R16 K13 ["BorderSizePixel"]
       96 SETTABLEKS                       R2 R16 K38 ["Text"]
       98 GETIMPORT                        R17 K46 [Enum.TextXAlignment.Left]
      100 SETTABLEKS                       R17 R16 K39 ["TextXAlignment"]
      102 GETIMPORT                        R17 K47 [Enum.TextYAlignment.Top]
      104 SETTABLEKS                       R17 R16 K40 ["TextYAlignment"]
      106 GETUPVAL                         R17 2
      107 GETTABLEKS                       R17 R17 K48 ["FONT_SIZE_TITLE"]
      109 SETTABLEKS                       R17 R16 K41 ["TextSize"]
      111 GETTABLEKS                       R17 R9 K49 ["titleTextColor"]
      113 SETTABLEKS                       R17 R16 K42 ["TextColor3"]
      115 GETUPVAL                         R17 2
      116 GETTABLEKS                       R17 R17 K50 ["FONT"]
      118 SETTABLEKS                       R17 R16 K43 ["Font"]
      120 LOADN                            R17 1
      121 SETTABLEKS                       R17 R16 K2 ["LayoutOrder"]
      123 CALL                             R14 2 1
      124 SETTABLEKS                       R14 R13 K1 ["Title"]
      126 GETUPVAL                         R14 0
      127 GETTABLEKS                       R14 R14 K9 ["createElement"]
      129 GETUPVAL                         R15 3
      130 DUPTABLE                         R16 K54 [{"Disabled", "LayoutOrder", "OnClick", "Selected", "Size"}]
      131 NOT                              R17 R6
      132 SETTABLEKS                       R17 R16 K51 ["Disabled"]
      134 LOADN                            R17 2
      135 SETTABLEKS                       R17 R16 K2 ["LayoutOrder"]
      137 GETTABLEKS                       R17 R0 K55 ["toggleCallback"]
      139 SETTABLEKS                       R17 R16 K52 ["OnClick"]
      141 SETTABLEKS                       R5 R16 K53 ["Selected"]
      143 GETIMPORT                        R17 K17 [UDim2.new]
      145 LOADN                            R18 0
      146 LOADN                            R19 40
      147 LOADN                            R20 0
      148 LOADN                            R21 24
      149 CALL                             R17 4 1
      150 SETTABLEKS                       R17 R16 K11 ["Size"]
      152 CALL                             R14 2 1
      153 SETTABLEKS                       R14 R13 K19 ["ToggleButton"]
      155 CALL                             R10 3 -1
      156 RETURN                           R10 -1

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
       23 GETTABLEKS                       R3 R3 K8 ["ContextServices"]
       25 GETTABLEKS                       R4 R3 K9 ["withContext"]
       27 GETTABLEKS                       R5 R0 K10 ["Src"]
       29 GETTABLEKS                       R5 R5 K11 ["Util"]
       31 GETIMPORT                        R6 K5 [require]
       33 GETTABLEKS                       R7 R5 K12 ["Constants"]
       35 CALL                             R6 1 1
       36 GETIMPORT                        R7 K5 [require]
       38 GETTABLEKS                       R8 R5 K13 ["AssetConfigConstants"]
       40 CALL                             R7 1 1
       41 GETIMPORT                        R8 K5 [require]
       43 GETTABLEKS                       R9 R1 K7 ["Framework"]
       45 CALL                             R8 1 1
       46 GETTABLEKS                       R8 R8 K14 ["UI"]
       48 GETTABLEKS                       R8 R8 K15 ["ToggleButton"]
       50 GETTABLEKS                       R9 R2 K16 ["PureComponent"]
       52 LOADK                            R11 K17 ["ConfigComment"]
       53 NAMECALL                         R9 R9 K18 ["extend"]
       55 CALL                             R9 2 1
       56 DUPCLOSURE                       R10 K19 [PROTO_1]
       57 SETTABLEKS                       R10 R9 K20 ["init"]
       59 DUPCLOSURE                       R10 K21 [PROTO_2]
       60 CAPTURE                          VAL R2
       61 CAPTURE                          VAL R7
       62 CAPTURE                          VAL R6
       63 CAPTURE                          VAL R8
       64 SETTABLEKS                       R10 R9 K22 ["render"]
       66 MOVE                             R10 R4
       67 DUPTABLE                         R11 K24 [{"Stylizer"}]
       68 GETTABLEKS                       R12 R3 K23 ["Stylizer"]
       70 SETTABLEKS                       R12 R11 K23 ["Stylizer"]
       72 CALL                             R10 1 1
       73 MOVE                             R11 R9
       74 CALL                             R10 1 1
       75 MOVE                             R9 R10
       76 RETURN                           R9 1
