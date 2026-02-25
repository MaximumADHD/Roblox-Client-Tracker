PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Stylizer"]
        4 GETTABLEKS                       R3 R1 K2 ["TotalWidth"]
        6 GETTABLEKS                       R4 R1 K3 ["LayoutOrder"]
        8 GETTABLEKS                       R5 R2 K4 ["previewArea"]
       10 GETUPVAL                         R7 0
       11 GETTABLEKS                       R6 R7 K5 ["new"]
       13 CALL                             R6 0 1
       14 GETUPVAL                         R8 1
       15 GETTABLEKS                       R7 R8 K6 ["createElement"]
       17 LOADK                            R8 K7 ["Frame"]
       18 DUPTABLE                         R9 K12 [{"Size", "BackgroundTransparency", "BackgroundColor3", "BorderSizePixel", "LayoutOrder"}]
       19 GETIMPORT                        R10 K14 [UDim2.new]
       21 LOADN                            R11 0
       22 MOVE                             R12 R3
       23 LOADN                            R13 1
       24 LOADN                            R14 0
       25 CALL                             R10 4 1
       26 SETTABLEKS                       R10 R9 K8 ["Size"]
       28 LOADN                            R10 0
       29 SETTABLEKS                       R10 R9 K9 ["BackgroundTransparency"]
       31 GETTABLEKS                       R10 R5 K15 ["backgroundColor"]
       33 SETTABLEKS                       R10 R9 K10 ["BackgroundColor3"]
       35 LOADN                            R10 0
       36 SETTABLEKS                       R10 R9 K11 ["BorderSizePixel"]
       38 SETTABLEKS                       R4 R9 K3 ["LayoutOrder"]
       40 DUPTABLE                         R10 K19 [{"Padding", "UIListLayout", "AssetThumbnailPreview"}]
       41 GETUPVAL                         R12 1
       42 GETTABLEKS                       R11 R12 K6 ["createElement"]
       44 LOADK                            R12 K20 ["UIPadding"]
       45 DUPTABLE                         R13 K25 [{"PaddingTop", "PaddingBottom", "PaddingLeft", "PaddingRight"}]
       46 GETIMPORT                        R14 K27 [UDim.new]
       48 LOADN                            R15 0
       49 LOADN                            R16 24
       50 CALL                             R14 2 1
       51 SETTABLEKS                       R14 R13 K21 ["PaddingTop"]
       53 GETIMPORT                        R14 K27 [UDim.new]
       55 LOADN                            R15 0
       56 LOADN                            R16 5
       57 CALL                             R14 2 1
       58 SETTABLEKS                       R14 R13 K22 ["PaddingBottom"]
       60 GETIMPORT                        R14 K27 [UDim.new]
       62 LOADN                            R15 0
       63 LOADN                            R16 5
       64 CALL                             R14 2 1
       65 SETTABLEKS                       R14 R13 K23 ["PaddingLeft"]
       67 GETIMPORT                        R14 K27 [UDim.new]
       69 LOADN                            R15 0
       70 LOADN                            R16 5
       71 CALL                             R14 2 1
       72 SETTABLEKS                       R14 R13 K24 ["PaddingRight"]
       74 CALL                             R11 2 1
       75 SETTABLEKS                       R11 R10 K16 ["Padding"]
       77 GETUPVAL                         R12 1
       78 GETTABLEKS                       R11 R12 K6 ["createElement"]
       80 LOADK                            R12 K17 ["UIListLayout"]
       81 DUPTABLE                         R13 K32 [{"FillDirection", "HorizontalAlignment", "VerticalAlignment", "SortOrder", "Padding"}]
       82 GETIMPORT                        R14 K35 [Enum.FillDirection.Vertical]
       84 SETTABLEKS                       R14 R13 K28 ["FillDirection"]
       86 GETIMPORT                        R14 K37 [Enum.HorizontalAlignment.Center]
       88 SETTABLEKS                       R14 R13 K29 ["HorizontalAlignment"]
       90 GETIMPORT                        R14 K39 [Enum.VerticalAlignment.Top]
       92 SETTABLEKS                       R14 R13 K30 ["VerticalAlignment"]
       94 GETIMPORT                        R14 K40 [Enum.SortOrder.LayoutOrder]
       96 SETTABLEKS                       R14 R13 K31 ["SortOrder"]
       98 GETIMPORT                        R14 K27 [UDim.new]
      100 LOADN                            R15 0
      101 LOADN                            R16 20
      102 CALL                             R14 2 1
      103 SETTABLEKS                       R14 R13 K16 ["Padding"]
      105 CALL                             R11 2 1
      106 SETTABLEKS                       R11 R10 K17 ["UIListLayout"]
      108 GETUPVAL                         R12 1
      109 GETTABLEKS                       R11 R12 K6 ["createElement"]
      111 GETUPVAL                         R12 2
      112 DUPTABLE                         R13 K42 [{"Size", "ShowTitle", "LayoutOrder"}]
      113 GETIMPORT                        R14 K14 [UDim2.new]
      115 LOADN                            R15 0
      116 LOADN                            R16 150
      117 LOADN                            R17 0
      118 LOADN                            R18 150
      119 CALL                             R14 4 1
      120 SETTABLEKS                       R14 R13 K8 ["Size"]
      122 LOADB                            R14 0
      123 SETTABLEKS                       R14 R13 K41 ["ShowTitle"]
      125 NAMECALL                         R14 R6 K43 ["getNextOrder"]
      127 CALL                             R14 1 1
      128 SETTABLEKS                       R14 R13 K3 ["LayoutOrder"]
      130 CALL                             R11 2 1
      131 SETTABLEKS                       R11 R10 K18 ["AssetThumbnailPreview"]
      133 CALL                             R7 3 -1
      134 RETURN                           R7 -1

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
       20 GETTABLEKS                       R5 R0 K3 ["Packages"]
       22 GETTABLEKS                       R4 R5 K7 ["Framework"]
       24 CALL                             R3 1 1
       25 GETTABLEKS                       R4 R3 K8 ["ContextServices"]
       27 GETTABLEKS                       R5 R4 K9 ["withContext"]
       29 GETIMPORT                        R6 K5 [require]
       31 GETTABLEKS                       R10 R0 K10 ["Src"]
       33 GETTABLEKS                       R9 R10 K11 ["Components"]
       35 GETTABLEKS                       R8 R9 K12 ["ConvertToPackageWindow"]
       37 GETTABLEKS                       R7 R8 K13 ["AssetThumbnailPreview"]
       39 CALL                             R6 1 1
       40 GETTABLEKS                       R8 R0 K10 ["Src"]
       42 GETTABLEKS                       R7 R8 K14 ["Util"]
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
