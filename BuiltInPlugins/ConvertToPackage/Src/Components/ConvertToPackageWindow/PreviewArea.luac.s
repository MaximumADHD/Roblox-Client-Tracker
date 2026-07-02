PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Stylizer"]
        4 GETTABLEKS                       R3 R1 K2 ["TotalWidth"]
        6 GETTABLEKS                       R4 R1 K3 ["LayoutOrder"]
        8 GETTABLEKS                       R5 R2 K4 ["previewArea"]
       10 GETUPVAL                         R6 0
       11 GETTABLEKS                       R6 R6 K5 ["new"]
       13 CALL                             R6 0 1
       14 GETUPVAL                         R7 1
       15 GETTABLEKS                       R7 R7 K6 ["createElement"]
       17 LOADK                            R8 K7 ["Frame"]
       18 DUPTABLE                         R9 K13 [{["Size"], ["BackgroundTransparency"] = 0, ["BackgroundColor3"], ["BorderSizePixel"] = 0, ["LayoutOrder"]}]
       19 GETIMPORT                        R10 K15 [UDim2.new]
       21 LOADN                            R11 0
       22 MOVE                             R12 R3
       23 LOADN                            R13 1
       24 LOADN                            R14 0
       25 CALL                             R10 4 1
       26 SETTABLEKS                       R10 R9 K8 ["Size"]
       28 GETTABLEKS                       R10 R5 K16 ["backgroundColor"]
       30 SETTABLEKS                       R10 R9 K11 ["BackgroundColor3"]
       32 SETTABLEKS                       R4 R9 K3 ["LayoutOrder"]
       34 DUPTABLE                         R10 K20 [{"Padding", "UIListLayout", "AssetThumbnailPreview"}]
       35 GETUPVAL                         R11 1
       36 GETTABLEKS                       R11 R11 K6 ["createElement"]
       38 LOADK                            R12 K21 ["UIPadding"]
       39 DUPTABLE                         R13 K26 [{"PaddingTop", "PaddingBottom", "PaddingLeft", "PaddingRight"}]
       40 GETIMPORT                        R14 K28 [UDim.new]
       42 LOADN                            R15 0
       43 LOADN                            R16 24
       44 CALL                             R14 2 1
       45 SETTABLEKS                       R14 R13 K22 ["PaddingTop"]
       47 GETIMPORT                        R14 K28 [UDim.new]
       49 LOADN                            R15 0
       50 LOADN                            R16 5
       51 CALL                             R14 2 1
       52 SETTABLEKS                       R14 R13 K23 ["PaddingBottom"]
       54 GETIMPORT                        R14 K28 [UDim.new]
       56 LOADN                            R15 0
       57 LOADN                            R16 5
       58 CALL                             R14 2 1
       59 SETTABLEKS                       R14 R13 K24 ["PaddingLeft"]
       61 GETIMPORT                        R14 K28 [UDim.new]
       63 LOADN                            R15 0
       64 LOADN                            R16 5
       65 CALL                             R14 2 1
       66 SETTABLEKS                       R14 R13 K25 ["PaddingRight"]
       68 CALL                             R11 2 1
       69 SETTABLEKS                       R11 R10 K17 ["Padding"]
       71 GETUPVAL                         R11 1
       72 GETTABLEKS                       R11 R11 K6 ["createElement"]
       74 LOADK                            R12 K18 ["UIListLayout"]
       75 DUPTABLE                         R13 K33 [{"FillDirection", "HorizontalAlignment", "VerticalAlignment", "SortOrder", "Padding"}]
       76 GETIMPORT                        R14 K36 [Enum.FillDirection.Vertical]
       78 SETTABLEKS                       R14 R13 K29 ["FillDirection"]
       80 GETIMPORT                        R14 K38 [Enum.HorizontalAlignment.Center]
       82 SETTABLEKS                       R14 R13 K30 ["HorizontalAlignment"]
       84 GETIMPORT                        R14 K40 [Enum.VerticalAlignment.Top]
       86 SETTABLEKS                       R14 R13 K31 ["VerticalAlignment"]
       88 GETIMPORT                        R14 K41 [Enum.SortOrder.LayoutOrder]
       90 SETTABLEKS                       R14 R13 K32 ["SortOrder"]
       92 GETIMPORT                        R14 K28 [UDim.new]
       94 LOADN                            R15 0
       95 LOADN                            R16 20
       96 CALL                             R14 2 1
       97 SETTABLEKS                       R14 R13 K17 ["Padding"]
       99 CALL                             R11 2 1
      100 SETTABLEKS                       R11 R10 K18 ["UIListLayout"]
      102 GETUPVAL                         R11 1
      103 GETTABLEKS                       R11 R11 K6 ["createElement"]
      105 GETUPVAL                         R12 2
      106 DUPTABLE                         R13 K44 [{["Size"], ["ShowTitle"] = False, ["LayoutOrder"]}]
      107 GETIMPORT                        R14 K15 [UDim2.new]
      109 LOADN                            R15 0
      110 LOADN                            R16 150
      111 LOADN                            R17 0
      112 LOADN                            R18 150
      113 CALL                             R14 4 1
      114 SETTABLEKS                       R14 R13 K8 ["Size"]
      116 NAMECALL                         R14 R6 K45 ["getNextOrder"]
      118 CALL                             R14 1 1
      119 SETTABLEKS                       R14 R13 K3 ["LayoutOrder"]
      121 CALL                             R11 2 1
      122 SETTABLEKS                       R11 R10 K19 ["AssetThumbnailPreview"]
      124 CALL                             R7 3 -1
      125 RETURN                           R7 -1

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
       20 GETTABLEKS                       R4 R0 K3 ["Packages"]
       22 GETTABLEKS                       R4 R4 K7 ["Framework"]
       24 CALL                             R3 1 1
       25 GETTABLEKS                       R4 R3 K8 ["ContextServices"]
       27 GETTABLEKS                       R5 R4 K9 ["withContext"]
       29 GETIMPORT                        R6 K5 [require]
       31 GETTABLEKS                       R7 R0 K10 ["Src"]
       33 GETTABLEKS                       R7 R7 K11 ["Components"]
       35 GETTABLEKS                       R7 R7 K12 ["ConvertToPackageWindow"]
       37 GETTABLEKS                       R7 R7 K13 ["AssetThumbnailPreview"]
       39 CALL                             R6 1 1
       40 GETTABLEKS                       R7 R0 K10 ["Src"]
       42 GETTABLEKS                       R7 R7 K14 ["Util"]
       44 GETIMPORT                        R8 K5 [require]
       46 GETTABLEKS                       R9 R7 K15 ["LayoutOrderIterator"]
       48 CALL                             R8 1 1
       49 GETTABLEKS                       R9 R2 K16 ["PureComponent"]
       51 LOADK                            R11 K17 ["PreviewArea"]
       52 NAMECALL                         R9 R9 K18 ["extend"]
       54 CALL                             R9 2 1
       55 DUPCLOSURE                       R10 K19 [PROTO_0]
       56 CAPTURE                          VAL R8
       57 CAPTURE                          VAL R2
       58 CAPTURE                          VAL R6
       59 SETTABLEKS                       R10 R9 K20 ["render"]
       61 MOVE                             R10 R5
       62 DUPTABLE                         R11 K22 [{"Stylizer"}]
       63 GETTABLEKS                       R12 R4 K21 ["Stylizer"]
       65 SETTABLEKS                       R12 R11 K21 ["Stylizer"]
       67 CALL                             R10 1 1
       68 MOVE                             R11 R9
       69 CALL                             R10 1 1
       70 MOVE                             R9 R10
       71 RETURN                           R9 1
