PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["new"]
        3 CALL                             R1 0 1
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K1 ["createElement"]
        7 LOADK                            R3 K2 ["Frame"]
        8 DUPTABLE                         R4 K9 [{["LayoutOrder"], ["Size"], ["BorderSizePixel"] = 0, ["BackgroundTransparency"] = 1}]
        9 GETTABLEKS                       R5 R0 K3 ["LayoutOrder"]
       11 SETTABLEKS                       R5 R4 K3 ["LayoutOrder"]
       13 GETIMPORT                        R5 K11 [UDim2.new]
       15 LOADN                            R6 1
       16 LOADN                            R7 0
       17 LOADN                            R8 0
       18 LOADN                            R9 2
       19 CALL                             R5 4 1
       20 SETTABLEKS                       R5 R4 K4 ["Size"]
       22 DUPTABLE                         R5 K14 [{"UIListLayoutHorizontal", "DividerFrame"}]
       23 GETUPVAL                         R6 1
       24 GETTABLEKS                       R6 R6 K1 ["createElement"]
       26 LOADK                            R7 K15 ["UIListLayout"]
       27 DUPTABLE                         R8 K20 [{"SortOrder", "HorizontalAlignment", "VerticalAlignment", "FillDirection"}]
       28 GETIMPORT                        R9 K22 [Enum.SortOrder.LayoutOrder]
       30 SETTABLEKS                       R9 R8 K16 ["SortOrder"]
       32 GETIMPORT                        R9 K24 [Enum.HorizontalAlignment.Left]
       34 SETTABLEKS                       R9 R8 K17 ["HorizontalAlignment"]
       36 GETIMPORT                        R9 K26 [Enum.VerticalAlignment.Center]
       38 SETTABLEKS                       R9 R8 K18 ["VerticalAlignment"]
       40 GETIMPORT                        R9 K28 [Enum.FillDirection.Horizontal]
       42 SETTABLEKS                       R9 R8 K19 ["FillDirection"]
       44 CALL                             R6 2 1
       45 SETTABLEKS                       R6 R5 K12 ["UIListLayoutHorizontal"]
       47 GETUPVAL                         R6 1
       48 GETTABLEKS                       R6 R6 K1 ["createElement"]
       50 LOADK                            R7 K2 ["Frame"]
       51 DUPTABLE                         R8 K30 [{["Size"], ["LayoutOrder"], ["BorderSizePixel"] = 0, ["BackgroundColor3"]}]
       52 GETIMPORT                        R9 K11 [UDim2.new]
       54 LOADN                            R10 1
       55 LOADN                            R11 0
       56 LOADN                            R12 0
       57 LOADN                            R13 1
       58 CALL                             R9 4 1
       59 SETTABLEKS                       R9 R8 K4 ["Size"]
       61 NAMECALL                         R9 R1 K31 ["getNextOrder"]
       63 CALL                             R9 1 1
       64 SETTABLEKS                       R9 R8 K3 ["LayoutOrder"]
       66 GETUPVAL                         R9 2
       67 GETTABLEKS                       R9 R9 K32 ["getDividerColor"]
       69 MOVE                             R10 R0
       70 CALL                             R9 1 1
       71 SETTABLEKS                       R9 R8 K29 ["BackgroundColor3"]
       73 CALL                             R6 2 1
       74 SETTABLEKS                       R6 R5 K13 ["DividerFrame"]
       76 CALL                             R2 3 -1
       77 RETURN                           R2 -1

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
