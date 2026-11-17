PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K1 ["createElement"]
        5 LOADK                            R3 K2 ["Frame"]
        6 DUPTABLE                         R4 K6 [{["BackgroundTransparency"] = 1, ["Size"]}]
        7 GETIMPORT                        R5 K9 [UDim2.new]
        9 LOADN                            R6 1
       10 LOADN                            R7 0
       11 LOADN                            R8 0
       12 LOADN                            R9 45
       13 CALL                             R5 4 1
       14 SETTABLEKS                       R5 R4 K5 ["Size"]
       16 DUPTABLE                         R5 K12 [{"UIPadding", "Header"}]
       17 GETUPVAL                         R6 0
       18 GETTABLEKS                       R6 R6 K1 ["createElement"]
       20 LOADK                            R7 K10 ["UIPadding"]
       21 DUPTABLE                         R8 K14 [{"PaddingLeft"}]
       22 GETIMPORT                        R9 K16 [UDim.new]
       24 LOADN                            R10 0
       25 LOADN                            R11 -5
       26 CALL                             R9 2 1
       27 SETTABLEKS                       R9 R8 K13 ["PaddingLeft"]
       29 CALL                             R6 2 1
       30 SETTABLEKS                       R6 R5 K10 ["UIPadding"]
       32 GETUPVAL                         R6 0
       33 GETTABLEKS                       R6 R6 K1 ["createElement"]
       35 LOADK                            R7 K17 ["TextLabel"]
       36 DUPTABLE                         R8 K26 [{["BackgroundTransparency"] = 1, ["Font"], ["LayoutOrder"], ["Text"], ["TextColor3"], ["TextSize"] = 24, ["TextXAlignment"], ["TextYAlignment"], ["Size"]}]
       37 GETUPVAL                         R9 1
       38 GETTABLEKS                       R9 R9 K27 ["FONT"]
       40 SETTABLEKS                       R9 R8 K18 ["Font"]
       42 GETTABLEKS                       R10 R1 K19 ["LayoutOrder"]
       44 ORK                              R9 R10 K4 [1]
       45 SETTABLEKS                       R9 R8 K19 ["LayoutOrder"]
       47 GETTABLEKS                       R9 R1 K28 ["Title"]
       49 SETTABLEKS                       R9 R8 K20 ["Text"]
       51 GETTABLEKS                       R9 R1 K29 ["Stylizer"]
       53 GETTABLEKS                       R9 R9 K30 ["publishAsset"]
       55 GETTABLEKS                       R9 R9 K31 ["textColor"]
       57 SETTABLEKS                       R9 R8 K21 ["TextColor3"]
       59 GETIMPORT                        R9 K34 [Enum.TextXAlignment.Left]
       61 SETTABLEKS                       R9 R8 K24 ["TextXAlignment"]
       63 GETIMPORT                        R9 K36 [Enum.TextYAlignment.Top]
       65 SETTABLEKS                       R9 R8 K25 ["TextYAlignment"]
       67 GETIMPORT                        R9 K9 [UDim2.new]
       69 LOADN                            R10 0
       70 LOADN                            R11 0
       71 LOADN                            R12 0
       72 LOADN                            R13 45
       73 CALL                             R9 4 1
       74 SETTABLEKS                       R9 R8 K5 ["Size"]
       76 CALL                             R6 2 1
       77 SETTABLEKS                       R6 R5 K11 ["Header"]
       79 CALL                             R2 3 -1
       80 RETURN                           R2 -1

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
       36 GETTABLEKS                       R7 R2 K13 ["PureComponent"]
       38 LOADK                            R9 K14 ["Header"]
       39 NAMECALL                         R7 R7 K15 ["extend"]
       41 CALL                             R7 2 1
       42 DUPCLOSURE                       R8 K16 [PROTO_0]
       43 CAPTURE                          VAL R2
       44 CAPTURE                          VAL R6
       45 SETTABLEKS                       R8 R7 K17 ["render"]
       47 MOVE                             R8 R4
       48 DUPTABLE                         R9 K19 [{"Stylizer"}]
       49 GETTABLEKS                       R10 R3 K18 ["Stylizer"]
       51 SETTABLEKS                       R10 R9 K18 ["Stylizer"]
       53 CALL                             R8 1 1
       54 MOVE                             R9 R7
       55 CALL                             R8 1 1
       56 MOVE                             R7 R8
       57 RETURN                           R7 1
