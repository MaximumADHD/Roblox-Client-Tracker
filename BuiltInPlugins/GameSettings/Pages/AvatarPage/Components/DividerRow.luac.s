PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["new"]
        3 CALL                             R1 0 1
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K1 ["createElement"]
        7 LOADK                            R3 K2 ["Frame"]
        8 DUPTABLE                         R4 K7 [{"LayoutOrder", "Size", "BorderSizePixel", "BackgroundTransparency"}]
        9 GETTABLEKS                       R5 R0 K3 ["LayoutOrder"]
       11 SETTABLEKS                       R5 R4 K3 ["LayoutOrder"]
       13 GETIMPORT                        R5 K9 [UDim2.new]
       15 LOADN                            R6 1
       16 LOADN                            R7 0
       17 LOADN                            R8 0
       18 LOADN                            R9 2
       19 CALL                             R5 4 1
       20 SETTABLEKS                       R5 R4 K4 ["Size"]
       22 LOADN                            R5 0
       23 SETTABLEKS                       R5 R4 K5 ["BorderSizePixel"]
       25 LOADN                            R5 1
       26 SETTABLEKS                       R5 R4 K6 ["BackgroundTransparency"]
       28 DUPTABLE                         R5 K12 [{"UIListLayoutHorizontal", "DividerFrame"}]
       29 GETUPVAL                         R6 1
       30 GETTABLEKS                       R6 R6 K1 ["createElement"]
       32 LOADK                            R7 K13 ["UIListLayout"]
       33 DUPTABLE                         R8 K18 [{"SortOrder", "HorizontalAlignment", "VerticalAlignment", "FillDirection"}]
       34 GETIMPORT                        R9 K20 [Enum.SortOrder.LayoutOrder]
       36 SETTABLEKS                       R9 R8 K14 ["SortOrder"]
       38 GETIMPORT                        R9 K22 [Enum.HorizontalAlignment.Left]
       40 SETTABLEKS                       R9 R8 K15 ["HorizontalAlignment"]
       42 GETIMPORT                        R9 K24 [Enum.VerticalAlignment.Center]
       44 SETTABLEKS                       R9 R8 K16 ["VerticalAlignment"]
       46 GETIMPORT                        R9 K26 [Enum.FillDirection.Horizontal]
       48 SETTABLEKS                       R9 R8 K17 ["FillDirection"]
       50 CALL                             R6 2 1
       51 SETTABLEKS                       R6 R5 K10 ["UIListLayoutHorizontal"]
       53 GETUPVAL                         R6 1
       54 GETTABLEKS                       R6 R6 K1 ["createElement"]
       56 LOADK                            R7 K2 ["Frame"]
       57 DUPTABLE                         R8 K28 [{"Size", "LayoutOrder", "BorderSizePixel", "BackgroundColor3"}]
       58 GETIMPORT                        R9 K9 [UDim2.new]
       60 LOADN                            R10 1
       61 LOADN                            R11 0
       62 LOADN                            R12 0
       63 LOADN                            R13 1
       64 CALL                             R9 4 1
       65 SETTABLEKS                       R9 R8 K4 ["Size"]
       67 NAMECALL                         R9 R1 K29 ["getNextOrder"]
       69 CALL                             R9 1 1
       70 SETTABLEKS                       R9 R8 K3 ["LayoutOrder"]
       72 LOADN                            R9 0
       73 SETTABLEKS                       R9 R8 K5 ["BorderSizePixel"]
       75 GETUPVAL                         R9 2
       76 GETTABLEKS                       R9 R9 K30 ["getDividerColor"]
       78 MOVE                             R10 R0
       79 CALL                             R9 1 1
       80 SETTABLEKS                       R9 R8 K27 ["BackgroundColor3"]
       82 CALL                             R6 2 1
       83 SETTABLEKS                       R6 R5 K11 ["DividerFrame"]
       85 CALL                             R2 3 -1
       86 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETIMPORT                        R1 K1 [script]
        9 GETTABLEKS                       R1 R1 K2 ["Parent"]
       11 GETTABLEKS                       R1 R1 K2 ["Parent"]
       13 GETTABLEKS                       R1 R1 K2 ["Parent"]
       15 GETTABLEKS                       R1 R1 K2 ["Parent"]
       17 GETIMPORT                        R2 K4 [require]
       19 GETTABLEKS                       R3 R1 K5 ["Packages"]
       21 GETTABLEKS                       R3 R3 K6 ["Roact"]
       23 CALL                             R2 1 1
       24 GETIMPORT                        R3 K4 [require]
       26 GETTABLEKS                       R4 R1 K5 ["Packages"]
       28 GETTABLEKS                       R4 R4 K7 ["Framework"]
       30 CALL                             R3 1 1
       31 GETTABLEKS                       R3 R3 K8 ["Util"]
       33 GETTABLEKS                       R4 R3 K9 ["LayoutOrderIterator"]
       35 GETIMPORT                        R5 K4 [require]
       37 GETTABLEKS                       R6 R0 K8 ["Util"]
       39 GETTABLEKS                       R6 R6 K10 ["StateInterfaceTheme"]
       41 CALL                             R5 1 1
       42 DUPCLOSURE                       R6 K11 [PROTO_0]
       43 CAPTURE                          VAL R4
       44 CAPTURE                          VAL R2
       45 CAPTURE                          VAL R5
       46 RETURN                           R6 1
