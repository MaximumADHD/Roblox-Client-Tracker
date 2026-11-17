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
       22 DUPTABLE                         R12 K16 [{["Size"], ["BackgroundTransparency"] = 1, ["BorderSizePixel"] = 0, ["LayoutOrder"]}]
       23 GETIMPORT                        R13 K19 [UDim2.new]
       25 LOADN                            R14 1
       26 LOADN                            R15 0
       27 LOADN                            R16 0
       28 MOVE                             R17 R5
       29 CALL                             R13 4 1
       30 SETTABLEKS                       R13 R12 K11 ["Size"]
       32 SETTABLEKS                       R4 R12 K3 ["LayoutOrder"]
       34 DUPTABLE                         R13 K22 [{"UIListLayout", "Title", "ToggleButton"}]
       35 GETUPVAL                         R14 0
       36 GETTABLEKS                       R14 R14 K9 ["createElement"]
       38 LOADK                            R15 K20 ["UIListLayout"]
       39 DUPTABLE                         R16 K28 [{"FillDirection", "HorizontalAlignment", "VerticalAlignment", "SortOrder", "Padding"}]
       40 GETIMPORT                        R17 K31 [Enum.FillDirection.Horizontal]
       42 SETTABLEKS                       R17 R16 K23 ["FillDirection"]
       44 GETIMPORT                        R17 K33 [Enum.HorizontalAlignment.Left]
       46 SETTABLEKS                       R17 R16 K24 ["HorizontalAlignment"]
       48 GETIMPORT                        R17 K35 [Enum.VerticalAlignment.Top]
       50 SETTABLEKS                       R17 R16 K25 ["VerticalAlignment"]
       52 GETIMPORT                        R17 K36 [Enum.SortOrder.LayoutOrder]
       54 SETTABLEKS                       R17 R16 K26 ["SortOrder"]
       56 GETIMPORT                        R17 K38 [UDim.new]
       58 LOADN                            R18 0
       59 LOADN                            R19 0
       60 CALL                             R17 2 1
       61 SETTABLEKS                       R17 R16 K27 ["Padding"]
       63 CALL                             R14 2 1
       64 SETTABLEKS                       R14 R13 K20 ["UIListLayout"]
       66 GETUPVAL                         R14 0
       67 GETTABLEKS                       R14 R14 K9 ["createElement"]
       69 LOADK                            R15 K39 ["TextLabel"]
       70 DUPTABLE                         R16 K46 [{["Size"], ["BackgroundTransparency"] = 1, ["BorderSizePixel"] = 0, ["Text"], ["TextXAlignment"], ["TextYAlignment"], ["TextSize"], ["TextColor3"], ["Font"], ["LayoutOrder"] = 1}]
       71 GETIMPORT                        R17 K19 [UDim2.new]
       73 LOADN                            R18 0
       74 GETUPVAL                         R19 1
       75 GETTABLEKS                       R19 R19 K47 ["TITLE_GUTTER_WIDTH"]
       77 LOADN                            R20 1
       78 LOADN                            R21 0
       79 CALL                             R17 4 1
       80 SETTABLEKS                       R17 R16 K11 ["Size"]
       82 SETTABLEKS                       R3 R16 K40 ["Text"]
       84 GETIMPORT                        R17 K48 [Enum.TextXAlignment.Left]
       86 SETTABLEKS                       R17 R16 K41 ["TextXAlignment"]
       88 GETIMPORT                        R17 K49 [Enum.TextYAlignment.Top]
       90 SETTABLEKS                       R17 R16 K42 ["TextYAlignment"]
       92 GETUPVAL                         R17 1
       93 GETTABLEKS                       R17 R17 K50 ["FONT_SIZE_TITLE"]
       95 SETTABLEKS                       R17 R16 K43 ["TextSize"]
       97 GETTABLEKS                       R17 R9 K51 ["titleTextColor"]
       99 SETTABLEKS                       R17 R16 K44 ["TextColor3"]
      101 GETUPVAL                         R17 1
      102 GETTABLEKS                       R17 R17 K52 ["FONT"]
      104 SETTABLEKS                       R17 R16 K45 ["Font"]
      106 CALL                             R14 2 1
      107 SETTABLEKS                       R14 R13 K2 ["Title"]
      109 GETUPVAL                         R14 0
      110 GETTABLEKS                       R14 R14 K9 ["createElement"]
      112 GETUPVAL                         R15 2
      113 DUPTABLE                         R16 K57 [{["Disabled"], ["LayoutOrder"] = 2, ["OnClick"], ["Selected"]}]
      114 NOT                              R17 R7
      115 SETTABLEKS                       R17 R16 K53 ["Disabled"]
      117 SETTABLEKS                       R8 R16 K55 ["OnClick"]
      119 SETTABLEKS                       R6 R16 K56 ["Selected"]
      121 CALL                             R14 2 1
      122 SETTABLEKS                       R14 R13 K21 ["ToggleButton"]
      124 CALL                             R10 3 -1
      125 RETURN                           R10 -1

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
