PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Stylizer"]
        4 GETTABLEKS                       R3 R2 K2 ["publishAsset"]
        6 GETUPVAL                         R5 0
        7 GETTABLEKS                       R4 R5 K3 ["new"]
        9 CALL                             R4 0 1
       10 GETUPVAL                         R6 1
       11 GETTABLEKS                       R5 R6 K4 ["createElement"]
       13 GETUPVAL                         R6 2
       14 NEWTABLE                         R7 8 0
       16 GETIMPORT                        R8 K8 [Enum.AutomaticSize.Y]
       18 SETTABLEKS                       R8 R7 K6 ["AutomaticSize"]
       20 GETIMPORT                        R8 K11 [Enum.HorizontalAlignment.Left]
       22 SETTABLEKS                       R8 R7 K9 ["HorizontalAlignment"]
       24 GETIMPORT                        R8 K14 [Enum.FillDirection.Horizontal]
       26 SETTABLEKS                       R8 R7 K15 ["Layout"]
       28 GETTABLEKS                       R8 R1 K16 ["LayoutOrder"]
       30 SETTABLEKS                       R8 R7 K16 ["LayoutOrder"]
       32 GETTABLEKS                       R8 R1 K17 ["Size"]
       34 SETTABLEKS                       R8 R7 K17 ["Size"]
       36 GETIMPORT                        R8 K20 [Enum.VerticalAlignment.Top]
       38 SETTABLEKS                       R8 R7 K18 ["VerticalAlignment"]
       40 GETUPVAL                         R9 1
       41 GETTABLEKS                       R8 R9 K21 ["Ref"]
       43 GETTABLEKS                       R9 R1 K22 ["ForwardRef"]
       45 SETTABLE                         R9 R7 R8
       46 DUPTABLE                         R8 K25 [{"Title", "Contents"}]
       47 GETUPVAL                         R10 1
       48 GETTABLEKS                       R9 R10 K4 ["createElement"]
       50 GETUPVAL                         R10 3
       51 DUPTABLE                         R11 K31 [{"AutomaticSize", "LayoutOrder", "Size", "Text", "TextColor", "TextSize", "TextXAlignment", "TextYAlignment"}]
       52 GETIMPORT                        R12 K8 [Enum.AutomaticSize.Y]
       54 SETTABLEKS                       R12 R11 K6 ["AutomaticSize"]
       56 NAMECALL                         R12 R4 K32 ["getNextOrder"]
       58 CALL                             R12 1 1
       59 SETTABLEKS                       R12 R11 K16 ["LayoutOrder"]
       61 GETIMPORT                        R12 K34 [UDim2.new]
       63 LOADN                            R13 0
       64 GETUPVAL                         R15 4
       65 GETTABLEKS                       R14 R15 K35 ["TITLE_GUTTER_WIDTH"]
       67 LOADN                            R15 0
       68 LOADN                            R16 0
       69 CALL                             R12 4 1
       70 SETTABLEKS                       R12 R11 K17 ["Size"]
       72 GETTABLEKS                       R12 R1 K23 ["Title"]
       74 SETTABLEKS                       R12 R11 K26 ["Text"]
       76 GETTABLEKS                       R12 R3 K36 ["titleTextColor"]
       78 SETTABLEKS                       R12 R11 K27 ["TextColor"]
       80 GETUPVAL                         R13 5
       81 GETTABLEKS                       R12 R13 K37 ["FONT_SIZE_TITLE"]
       83 SETTABLEKS                       R12 R11 K28 ["TextSize"]
       85 GETIMPORT                        R12 K38 [Enum.TextXAlignment.Left]
       87 SETTABLEKS                       R12 R11 K29 ["TextXAlignment"]
       89 GETIMPORT                        R12 K39 [Enum.TextYAlignment.Top]
       91 SETTABLEKS                       R12 R11 K30 ["TextYAlignment"]
       93 CALL                             R9 2 1
       94 SETTABLEKS                       R9 R8 K23 ["Title"]
       96 GETUPVAL                         R10 1
       97 GETTABLEKS                       R9 R10 K4 ["createElement"]
       99 GETUPVAL                         R10 2
      100 DUPTABLE                         R11 K40 [{"AutomaticSize", "LayoutOrder", "Size"}]
      101 GETIMPORT                        R12 K8 [Enum.AutomaticSize.Y]
      103 SETTABLEKS                       R12 R11 K6 ["AutomaticSize"]
      105 NAMECALL                         R12 R4 K32 ["getNextOrder"]
      107 CALL                             R12 1 1
      108 SETTABLEKS                       R12 R11 K16 ["LayoutOrder"]
      110 GETIMPORT                        R12 K34 [UDim2.new]
      112 LOADN                            R13 1
      113 GETUPVAL                         R16 4
      114 GETTABLEKS                       R15 R16 K35 ["TITLE_GUTTER_WIDTH"]
      116 MINUS                            R14 R15
      117 LOADN                            R15 0
      118 GETUPVAL                         R17 5
      119 GETTABLEKS                       R16 R17 K37 ["FONT_SIZE_TITLE"]
      121 CALL                             R12 4 1
      122 SETTABLEKS                       R12 R11 K17 ["Size"]
      124 GETUPVAL                         R14 1
      125 GETTABLEKS                       R13 R14 K41 ["Children"]
      127 GETTABLE                         R12 R1 R13
      128 CALL                             R9 3 1
      129 SETTABLEKS                       R9 R8 K24 ["Contents"]
      131 CALL                             R5 3 -1
      132 RETURN                           R5 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R4 K1 [script]
        3 GETTABLEKS                       R3 R4 K2 ["Parent"]
        5 GETTABLEKS                       R2 R3 K2 ["Parent"]
        7 GETTABLEKS                       R1 R2 K2 ["Parent"]
        9 GETTABLEKS                       R0 R1 K2 ["Parent"]
       11 GETTABLEKS                       R1 R0 K3 ["Packages"]
       13 GETIMPORT                        R2 K5 [require]
       15 GETTABLEKS                       R3 R1 K6 ["Roact"]
       17 CALL                             R2 1 1
       18 GETIMPORT                        R3 K5 [require]
       20 GETTABLEKS                       R4 R1 K7 ["Framework"]
       22 CALL                             R3 1 1
       23 GETTABLEKS                       R5 R3 K8 ["UI"]
       25 GETTABLEKS                       R4 R5 K9 ["Pane"]
       27 GETTABLEKS                       R6 R3 K8 ["UI"]
       29 GETTABLEKS                       R5 R6 K10 ["TextLabel"]
       31 GETTABLEKS                       R7 R0 K11 ["Src"]
       33 GETTABLEKS                       R6 R7 K12 ["Util"]
       35 GETIMPORT                        R7 K5 [require]
       37 GETTABLEKS                       R8 R6 K13 ["Constants"]
       39 CALL                             R7 1 1
       40 GETIMPORT                        R8 K5 [require]
       42 GETTABLEKS                       R9 R6 K14 ["AssetConfigConstants"]
       44 CALL                             R8 1 1
       45 GETTABLEKS                       R10 R3 K12 ["Util"]
       47 GETTABLEKS                       R9 R10 K15 ["LayoutOrderIterator"]
       49 GETTABLEKS                       R10 R3 K16 ["ContextServices"]
       51 GETTABLEKS                       R11 R10 K17 ["withContext"]
       53 GETTABLEKS                       R13 R3 K18 ["Wrappers"]
       55 GETTABLEKS                       R12 R13 K19 ["withForwardRef"]
       57 GETTABLEKS                       R13 R2 K20 ["PureComponent"]
       59 LOADK                            R15 K21 ["ConfigureSectionWrapper"]
       60 NAMECALL                         R13 R13 K22 ["extend"]
       62 CALL                             R13 2 1
       63 DUPTABLE                         R14 K24 [{"Size"}]
       64 GETIMPORT                        R15 K27 [UDim2.new]
       66 LOADN                            R16 1
       67 LOADN                            R17 0
       68 LOADN                            R18 0
       69 LOADN                            R19 0
       70 CALL                             R15 4 1
       71 SETTABLEKS                       R15 R14 K23 ["Size"]
       73 SETTABLEKS                       R14 R13 K28 ["defaultProps"]
       75 DUPCLOSURE                       R14 K29 [PROTO_0]
       76 CAPTURE                          VAL R9
       77 CAPTURE                          VAL R2
       78 CAPTURE                          VAL R4
       79 CAPTURE                          VAL R5
       80 CAPTURE                          VAL R8
       81 CAPTURE                          VAL R7
       82 SETTABLEKS                       R14 R13 K30 ["render"]
       84 MOVE                             R14 R11
       85 DUPTABLE                         R15 K32 [{"Stylizer"}]
       86 GETTABLEKS                       R16 R10 K31 ["Stylizer"]
       88 SETTABLEKS                       R16 R15 K31 ["Stylizer"]
       90 CALL                             R14 1 1
       91 MOVE                             R15 R13
       92 CALL                             R14 1 1
       93 MOVE                             R13 R14
       94 MOVE                             R14 R12
       95 MOVE                             R15 R13
       96 CALL                             R14 1 1
       97 MOVE                             R13 R14
       98 RETURN                           R13 1
