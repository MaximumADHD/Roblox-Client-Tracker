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
       24 DUPTABLE                         R12 K16 [{["Size"], ["BackgroundTransparency"] = 1, ["BorderSizePixel"] = 0, ["LayoutOrder"]}]
       25 GETIMPORT                        R13 K19 [UDim2.new]
       27 LOADN                            R14 1
       28 LOADN                            R15 0
       29 LOADN                            R16 0
       30 MOVE                             R17 R4
       31 CALL                             R13 4 1
       32 SETTABLEKS                       R13 R12 K11 ["Size"]
       34 SETTABLEKS                       R3 R12 K2 ["LayoutOrder"]
       36 DUPTABLE                         R13 K22 [{"UIListLayout", "Title", "ToggleButton"}]
       37 GETUPVAL                         R14 0
       38 GETTABLEKS                       R14 R14 K9 ["createElement"]
       40 LOADK                            R15 K20 ["UIListLayout"]
       41 DUPTABLE                         R16 K28 [{"FillDirection", "HorizontalAlignment", "VerticalAlignment", "SortOrder", "Padding"}]
       42 GETIMPORT                        R17 K31 [Enum.FillDirection.Horizontal]
       44 SETTABLEKS                       R17 R16 K23 ["FillDirection"]
       46 GETIMPORT                        R17 K33 [Enum.HorizontalAlignment.Left]
       48 SETTABLEKS                       R17 R16 K24 ["HorizontalAlignment"]
       50 GETIMPORT                        R17 K35 [Enum.VerticalAlignment.Top]
       52 SETTABLEKS                       R17 R16 K25 ["VerticalAlignment"]
       54 GETIMPORT                        R17 K36 [Enum.SortOrder.LayoutOrder]
       56 SETTABLEKS                       R17 R16 K26 ["SortOrder"]
       58 GETIMPORT                        R17 K38 [UDim.new]
       60 LOADN                            R18 0
       61 LOADN                            R19 0
       62 CALL                             R17 2 1
       63 SETTABLEKS                       R17 R16 K27 ["Padding"]
       65 CALL                             R14 2 1
       66 SETTABLEKS                       R14 R13 K20 ["UIListLayout"]
       68 GETUPVAL                         R14 0
       69 GETTABLEKS                       R14 R14 K9 ["createElement"]
       71 LOADK                            R15 K39 ["TextLabel"]
       72 DUPTABLE                         R16 K46 [{["Size"], ["BackgroundTransparency"] = 1, ["BorderSizePixel"] = 0, ["Text"], ["TextXAlignment"], ["TextYAlignment"], ["TextSize"], ["TextColor3"], ["Font"], ["LayoutOrder"] = 1}]
       73 GETIMPORT                        R17 K19 [UDim2.new]
       75 LOADN                            R18 0
       76 GETUPVAL                         R19 1
       77 GETTABLEKS                       R19 R19 K47 ["TITLE_GUTTER_WIDTH"]
       79 LOADN                            R20 1
       80 LOADN                            R21 0
       81 CALL                             R17 4 1
       82 SETTABLEKS                       R17 R16 K11 ["Size"]
       84 SETTABLEKS                       R2 R16 K40 ["Text"]
       86 GETIMPORT                        R17 K48 [Enum.TextXAlignment.Left]
       88 SETTABLEKS                       R17 R16 K41 ["TextXAlignment"]
       90 GETIMPORT                        R17 K49 [Enum.TextYAlignment.Top]
       92 SETTABLEKS                       R17 R16 K42 ["TextYAlignment"]
       94 GETUPVAL                         R17 2
       95 GETTABLEKS                       R17 R17 K50 ["FONT_SIZE_TITLE"]
       97 SETTABLEKS                       R17 R16 K43 ["TextSize"]
       99 GETTABLEKS                       R17 R9 K51 ["titleTextColor"]
      101 SETTABLEKS                       R17 R16 K44 ["TextColor3"]
      103 GETUPVAL                         R17 2
      104 GETTABLEKS                       R17 R17 K52 ["FONT"]
      106 SETTABLEKS                       R17 R16 K45 ["Font"]
      108 CALL                             R14 2 1
      109 SETTABLEKS                       R14 R13 K1 ["Title"]
      111 GETUPVAL                         R14 0
      112 GETTABLEKS                       R14 R14 K9 ["createElement"]
      114 GETUPVAL                         R15 3
      115 DUPTABLE                         R16 K57 [{["Disabled"], ["LayoutOrder"] = 2, ["OnClick"], ["Selected"], ["Size"]}]
      116 NOT                              R17 R6
      117 SETTABLEKS                       R17 R16 K53 ["Disabled"]
      119 GETTABLEKS                       R17 R0 K58 ["toggleCallback"]
      121 SETTABLEKS                       R17 R16 K55 ["OnClick"]
      123 SETTABLEKS                       R5 R16 K56 ["Selected"]
      125 GETIMPORT                        R17 K19 [UDim2.new]
      127 LOADN                            R18 0
      128 LOADN                            R19 40
      129 LOADN                            R20 0
      130 LOADN                            R21 24
      131 CALL                             R17 4 1
      132 SETTABLEKS                       R17 R16 K11 ["Size"]
      134 CALL                             R14 2 1
      135 SETTABLEKS                       R14 R13 K21 ["ToggleButton"]
      137 CALL                             R10 3 -1
      138 RETURN                           R10 -1

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
