PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Stylizer"]
        4 GETUPVAL                         R3 0
        5 GETTABLEKS                       R3 R3 K2 ["createElement"]
        7 LOADK                            R4 K3 ["Frame"]
        8 DUPTABLE                         R5 K8 [{["Size"], ["BackgroundTransparency"] = 1, ["LayoutOrder"]}]
        9 GETIMPORT                        R6 K11 [UDim2.new]
       11 LOADN                            R7 1
       12 LOADN                            R8 0
       13 LOADN                            R9 0
       14 GETTABLEKS                       R10 R2 K12 ["HeightPx"]
       16 CALL                             R6 4 1
       17 SETTABLEKS                       R6 R5 K4 ["Size"]
       19 GETTABLEKS                       R6 R1 K7 ["LayoutOrder"]
       21 SETTABLEKS                       R6 R5 K7 ["LayoutOrder"]
       23 DUPTABLE                         R6 K16 [{"Layout", "KeyTextLabel", "ValueTextLabel"}]
       24 GETUPVAL                         R7 0
       25 GETTABLEKS                       R7 R7 K2 ["createElement"]
       27 LOADK                            R8 K17 ["UIListLayout"]
       28 DUPTABLE                         R9 K22 [{"FillDirection", "Padding", "SortOrder", "VerticalAlignment"}]
       29 GETIMPORT                        R10 K25 [Enum.FillDirection.Horizontal]
       31 SETTABLEKS                       R10 R9 K18 ["FillDirection"]
       33 GETIMPORT                        R10 K27 [UDim.new]
       35 LOADN                            R11 0
       36 GETTABLEKS                       R12 R2 K28 ["PaddingPx"]
       38 CALL                             R10 2 1
       39 SETTABLEKS                       R10 R9 K19 ["Padding"]
       41 GETIMPORT                        R10 K29 [Enum.SortOrder.LayoutOrder]
       43 SETTABLEKS                       R10 R9 K20 ["SortOrder"]
       45 GETIMPORT                        R10 K31 [Enum.VerticalAlignment.Center]
       47 SETTABLEKS                       R10 R9 K21 ["VerticalAlignment"]
       49 CALL                             R7 2 1
       50 SETTABLEKS                       R7 R6 K13 ["Layout"]
       52 GETUPVAL                         R7 0
       53 GETTABLEKS                       R7 R7 K2 ["createElement"]
       55 GETUPVAL                         R8 1
       56 DUPTABLE                         R9 K35 [{["Text"], ["Size"], ["TextXAlignment"], ["TextYAlignment"], ["LayoutOrder"] = 1}]
       57 GETTABLEKS                       R11 R1 K36 ["Label"]
       59 LOADK                            R12 K37 [":"]
       60 CONCAT                           R10 R11 R12
       61 SETTABLEKS                       R10 R9 K32 ["Text"]
       63 GETIMPORT                        R10 K11 [UDim2.new]
       65 LOADN                            R11 0
       66 GETTABLEKS                       R12 R2 K38 ["KeyWidthPx"]
       68 LOADN                            R13 1
       69 LOADN                            R14 0
       70 CALL                             R10 4 1
       71 SETTABLEKS                       R10 R9 K4 ["Size"]
       73 GETIMPORT                        R10 K40 [Enum.TextXAlignment.Right]
       75 SETTABLEKS                       R10 R9 K33 ["TextXAlignment"]
       77 GETIMPORT                        R10 K41 [Enum.TextYAlignment.Center]
       79 SETTABLEKS                       R10 R9 K34 ["TextYAlignment"]
       81 CALL                             R7 2 1
       82 SETTABLEKS                       R7 R6 K14 ["KeyTextLabel"]
       84 GETUPVAL                         R7 0
       85 GETTABLEKS                       R7 R7 K2 ["createElement"]
       87 GETUPVAL                         R8 1
       88 DUPTABLE                         R9 K43 [{["Text"], ["Size"], ["TextXAlignment"], ["TextYAlignment"], ["LayoutOrder"] = 2}]
       89 GETTABLEKS                       R10 R1 K44 ["Value"]
       91 SETTABLEKS                       R10 R9 K32 ["Text"]
       93 GETIMPORT                        R10 K11 [UDim2.new]
       95 LOADN                            R11 1
       96 GETTABLEKS                       R13 R2 K38 ["KeyWidthPx"]
       98 MINUS                            R12 R13
       99 LOADN                            R13 1
      100 LOADN                            R14 0
      101 CALL                             R10 4 1
      102 SETTABLEKS                       R10 R9 K4 ["Size"]
      104 GETIMPORT                        R10 K46 [Enum.TextXAlignment.Left]
      106 SETTABLEKS                       R10 R9 K33 ["TextXAlignment"]
      108 GETIMPORT                        R10 K41 [Enum.TextYAlignment.Center]
      110 SETTABLEKS                       R10 R9 K34 ["TextYAlignment"]
      112 CALL                             R7 2 1
      113 SETTABLEKS                       R7 R6 K15 ["ValueTextLabel"]
      115 CALL                             R3 3 -1
      116 RETURN                           R3 -1

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
