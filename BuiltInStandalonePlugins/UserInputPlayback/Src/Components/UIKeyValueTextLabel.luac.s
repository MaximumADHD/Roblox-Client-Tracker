PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Stylizer"]
        4 GETUPVAL                         R3 0
        5 GETTABLEKS                       R3 R3 K2 ["createElement"]
        7 LOADK                            R4 K3 ["Frame"]
        8 DUPTABLE                         R5 K7 [{"Size", "BackgroundTransparency", "LayoutOrder"}]
        9 GETIMPORT                        R6 K10 [UDim2.new]
       11 LOADN                            R7 1
       12 LOADN                            R8 0
       13 LOADN                            R9 0
       14 GETTABLEKS                       R10 R2 K11 ["HeightPx"]
       16 CALL                             R6 4 1
       17 SETTABLEKS                       R6 R5 K4 ["Size"]
       19 LOADN                            R6 1
       20 SETTABLEKS                       R6 R5 K5 ["BackgroundTransparency"]
       22 GETTABLEKS                       R6 R1 K6 ["LayoutOrder"]
       24 SETTABLEKS                       R6 R5 K6 ["LayoutOrder"]
       26 DUPTABLE                         R6 K15 [{"Layout", "KeyTextLabel", "ValueTextLabel"}]
       27 GETUPVAL                         R7 0
       28 GETTABLEKS                       R7 R7 K2 ["createElement"]
       30 LOADK                            R8 K16 ["UIListLayout"]
       31 DUPTABLE                         R9 K21 [{"FillDirection", "Padding", "SortOrder", "VerticalAlignment"}]
       32 GETIMPORT                        R10 K24 [Enum.FillDirection.Horizontal]
       34 SETTABLEKS                       R10 R9 K17 ["FillDirection"]
       36 GETIMPORT                        R10 K26 [UDim.new]
       38 LOADN                            R11 0
       39 GETTABLEKS                       R12 R2 K27 ["PaddingPx"]
       41 CALL                             R10 2 1
       42 SETTABLEKS                       R10 R9 K18 ["Padding"]
       44 GETIMPORT                        R10 K28 [Enum.SortOrder.LayoutOrder]
       46 SETTABLEKS                       R10 R9 K19 ["SortOrder"]
       48 GETIMPORT                        R10 K30 [Enum.VerticalAlignment.Center]
       50 SETTABLEKS                       R10 R9 K20 ["VerticalAlignment"]
       52 CALL                             R7 2 1
       53 SETTABLEKS                       R7 R6 K12 ["Layout"]
       55 GETUPVAL                         R7 0
       56 GETTABLEKS                       R7 R7 K2 ["createElement"]
       58 GETUPVAL                         R8 1
       59 DUPTABLE                         R9 K34 [{"Text", "Size", "TextXAlignment", "TextYAlignment", "LayoutOrder"}]
       60 GETTABLEKS                       R11 R1 K35 ["Label"]
       62 LOADK                            R12 K36 [":"]
       63 CONCAT                           R10 R11 R12
       64 SETTABLEKS                       R10 R9 K31 ["Text"]
       66 GETIMPORT                        R10 K10 [UDim2.new]
       68 LOADN                            R11 0
       69 GETTABLEKS                       R12 R2 K37 ["KeyWidthPx"]
       71 LOADN                            R13 1
       72 LOADN                            R14 0
       73 CALL                             R10 4 1
       74 SETTABLEKS                       R10 R9 K4 ["Size"]
       76 GETIMPORT                        R10 K39 [Enum.TextXAlignment.Right]
       78 SETTABLEKS                       R10 R9 K32 ["TextXAlignment"]
       80 GETIMPORT                        R10 K40 [Enum.TextYAlignment.Center]
       82 SETTABLEKS                       R10 R9 K33 ["TextYAlignment"]
       84 LOADN                            R10 1
       85 SETTABLEKS                       R10 R9 K6 ["LayoutOrder"]
       87 CALL                             R7 2 1
       88 SETTABLEKS                       R7 R6 K13 ["KeyTextLabel"]
       90 GETUPVAL                         R7 0
       91 GETTABLEKS                       R7 R7 K2 ["createElement"]
       93 GETUPVAL                         R8 1
       94 DUPTABLE                         R9 K34 [{"Text", "Size", "TextXAlignment", "TextYAlignment", "LayoutOrder"}]
       95 GETTABLEKS                       R10 R1 K41 ["Value"]
       97 SETTABLEKS                       R10 R9 K31 ["Text"]
       99 GETIMPORT                        R10 K10 [UDim2.new]
      101 LOADN                            R11 1
      102 GETTABLEKS                       R13 R2 K37 ["KeyWidthPx"]
      104 MINUS                            R12 R13
      105 LOADN                            R13 1
      106 LOADN                            R14 0
      107 CALL                             R10 4 1
      108 SETTABLEKS                       R10 R9 K4 ["Size"]
      110 GETIMPORT                        R10 K43 [Enum.TextXAlignment.Left]
      112 SETTABLEKS                       R10 R9 K32 ["TextXAlignment"]
      114 GETIMPORT                        R10 K40 [Enum.TextYAlignment.Center]
      116 SETTABLEKS                       R10 R9 K33 ["TextYAlignment"]
      118 LOADN                            R10 2
      119 SETTABLEKS                       R10 R9 K6 ["LayoutOrder"]
      121 CALL                             R7 2 1
      122 SETTABLEKS                       R7 R6 K14 ["ValueTextLabel"]
      124 CALL                             R3 3 -1
      125 RETURN                           R3 -1

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
       25 GETTABLEKS                       R4 R2 K9 ["UI"]
       27 GETTABLEKS                       R5 R4 K10 ["TextLabel"]
       29 GETTABLEKS                       R6 R1 K11 ["PureComponent"]
       31 LOADK                            R8 K12 ["UIKeyValueTextLabel"]
       32 NAMECALL                         R6 R6 K13 ["extend"]
       34 CALL                             R6 2 1
       35 DUPCLOSURE                       R7 K14 [PROTO_0]
       36 CAPTURE                          VAL R1
       37 CAPTURE                          VAL R5
       38 SETTABLEKS                       R7 R6 K15 ["render"]
       40 GETTABLEKS                       R7 R3 K16 ["withContext"]
       42 DUPTABLE                         R8 K19 [{"Stylizer", "Localization"}]
       43 GETTABLEKS                       R9 R3 K17 ["Stylizer"]
       45 SETTABLEKS                       R9 R8 K17 ["Stylizer"]
       47 GETTABLEKS                       R9 R3 K18 ["Localization"]
       49 SETTABLEKS                       R9 R8 K18 ["Localization"]
       51 CALL                             R7 1 1
       52 MOVE                             R8 R6
       53 CALL                             R7 1 1
       54 MOVE                             R6 R7
       55 RETURN                           R6 1
