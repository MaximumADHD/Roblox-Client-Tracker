PROTO_0:
        0 RETURN                           R0 0

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R1 R1 K1 ["LayoutOrder"]
        4 GETTABLEKS                       R2 R0 K0 ["props"]
        6 GETTABLEKS                       R2 R2 K2 ["renderContent"]
        8 GETTABLEKS                       R3 R0 K0 ["props"]
       10 GETTABLEKS                       R3 R3 K3 ["title"]
       12 GETTABLEKS                       R4 R0 K0 ["props"]
       14 GETTABLEKS                       R4 R4 K4 ["titleWidth"]
       16 GETTABLEKS                       R5 R0 K0 ["props"]
       18 GETTABLEKS                       R5 R5 K5 ["Stylizer"]
       20 GETUPVAL                         R6 0
       21 GETTABLEKS                       R6 R6 K6 ["createElement"]
       23 GETUPVAL                         R7 1
       24 DUPTABLE                         R8 K12 [{["BackgroundTransparency"] = 1, ["contentPadding"], ["FillDirection"], ["LayoutOrder"], ["width"]}]
       25 GETIMPORT                        R9 K15 [UDim.new]
       27 LOADN                            R10 0
       28 LOADN                            R11 20
       29 CALL                             R9 2 1
       30 SETTABLEKS                       R9 R8 K9 ["contentPadding"]
       32 GETIMPORT                        R9 K18 [Enum.FillDirection.Horizontal]
       34 SETTABLEKS                       R9 R8 K10 ["FillDirection"]
       36 SETTABLEKS                       R1 R8 K1 ["LayoutOrder"]
       38 GETIMPORT                        R9 K15 [UDim.new]
       40 LOADN                            R10 1
       41 LOADN                            R11 0
       42 CALL                             R9 2 1
       43 SETTABLEKS                       R9 R8 K11 ["width"]
       45 DUPTABLE                         R9 K21 [{"Title", "Container"}]
       46 GETUPVAL                         R10 0
       47 GETTABLEKS                       R10 R10 K6 ["createElement"]
       49 GETUPVAL                         R11 2
       50 DUPTABLE                         R12 K28 [{["BackgroundTransparency"] = 1, ["Font"], ["LayoutOrder"] = 1, ["Text"], ["TextColor3"], ["TextXAlignment"], ["TextSize"] = 18, ["width"]}]
       51 GETTABLEKS                       R13 R5 K22 ["Font"]
       53 SETTABLEKS                       R13 R12 K22 ["Font"]
       55 SETTABLEKS                       R3 R12 K23 ["Text"]
       57 GETTABLEKS                       R13 R5 K29 ["SubTextColor"]
       59 SETTABLEKS                       R13 R12 K24 ["TextColor3"]
       61 GETIMPORT                        R13 K31 [Enum.TextXAlignment.Left]
       63 SETTABLEKS                       R13 R12 K25 ["TextXAlignment"]
       65 GETIMPORT                        R13 K15 [UDim.new]
       67 LOADN                            R14 0
       68 MOVE                             R15 R4
       69 CALL                             R13 2 1
       70 SETTABLEKS                       R13 R12 K11 ["width"]
       72 CALL                             R10 2 1
       73 SETTABLEKS                       R10 R9 K19 ["Title"]
       75 GETUPVAL                         R10 0
       76 GETTABLEKS                       R10 R10 K6 ["createElement"]
       78 GETUPVAL                         R11 1
       79 DUPTABLE                         R12 K33 [{["BackgroundTransparency"] = 1, ["LayoutOrder"] = 2, ["width"]}]
       80 GETIMPORT                        R13 K15 [UDim.new]
       82 LOADN                            R14 1
       83 MINUS                            R16 R4
       84 SUBK                             R15 R16 K34 [20]
       85 CALL                             R13 2 1
       86 SETTABLEKS                       R13 R12 K11 ["width"]
       88 DUPTABLE                         R13 K36 [{"Content"}]
       89 MOVE                             R14 R2
       90 CALL                             R14 0 1
       91 SETTABLEKS                       R14 R13 K35 ["Content"]
       93 CALL                             R10 3 1
       94 SETTABLEKS                       R10 R9 K20 ["Container"]
       96 CALL                             R6 3 -1
       97 RETURN                           R6 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETTABLEKS                       R0 R0 K2 ["Parent"]
       11 GETIMPORT                        R1 K4 [require]
       13 GETTABLEKS                       R2 R0 K5 ["Packages"]
       15 GETTABLEKS                       R2 R2 K6 ["Roact"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K4 [require]
       20 GETTABLEKS                       R3 R0 K5 ["Packages"]
       22 GETTABLEKS                       R3 R3 K7 ["FitFrame"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K4 [require]
       27 GETTABLEKS                       R4 R0 K8 ["Src"]
       29 GETTABLEKS                       R4 R4 K9 ["Util"]
       31 GETTABLEKS                       R4 R4 K10 ["Constants"]
       33 CALL                             R3 1 1
       34 GETIMPORT                        R4 K4 [require]
       36 GETTABLEKS                       R5 R0 K5 ["Packages"]
       38 GETTABLEKS                       R5 R5 K11 ["Framework"]
       40 CALL                             R4 1 1
       41 GETTABLEKS                       R4 R4 K12 ["ContextServices"]
       43 GETTABLEKS                       R5 R4 K13 ["withContext"]
       45 GETTABLEKS                       R6 R2 K14 ["FitFrameVertical"]
       47 GETTABLEKS                       R7 R2 K15 ["FitTextLabel"]
       49 GETTABLEKS                       R8 R1 K16 ["Component"]
       51 LOADK                            R10 K17 ["ListItem"]
       52 NAMECALL                         R8 R8 K18 ["extend"]
       54 CALL                             R8 2 1
       55 DUPTABLE                         R9 K23 [{["renderContent"], ["title"] = "", ["titleWidth"]}]
       56 DUPCLOSURE                       R10 K24 [PROTO_0]
       57 SETTABLEKS                       R10 R9 K19 ["renderContent"]
       59 GETTABLEKS                       R10 R3 K25 ["LIST_ITEM_TITLE_WIDTH"]
       61 SETTABLEKS                       R10 R9 K22 ["titleWidth"]
       63 SETTABLEKS                       R9 R8 K26 ["defaultProps"]
       65 DUPCLOSURE                       R9 K27 [PROTO_1]
       66 CAPTURE                          VAL R1
       67 CAPTURE                          VAL R6
       68 CAPTURE                          VAL R7
       69 SETTABLEKS                       R9 R8 K28 ["render"]
       71 MOVE                             R9 R5
       72 DUPTABLE                         R10 K30 [{"Stylizer"}]
       73 GETTABLEKS                       R11 R4 K29 ["Stylizer"]
       75 SETTABLEKS                       R11 R10 K29 ["Stylizer"]
       77 CALL                             R9 1 1
       78 MOVE                             R10 R8
       79 CALL                             R9 1 1
       80 MOVE                             R8 R9
       81 RETURN                           R8 1
