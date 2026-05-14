PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K1 ["createElement"]
        5 LOADK                            R3 K2 ["Frame"]
        6 DUPTABLE                         R4 K5 [{"BackgroundTransparency", "Size"}]
        7 LOADN                            R5 1
        8 SETTABLEKS                       R5 R4 K3 ["BackgroundTransparency"]
       10 GETIMPORT                        R5 K8 [UDim2.new]
       12 LOADN                            R6 1
       13 LOADN                            R7 0
       14 LOADN                            R8 0
       15 LOADN                            R9 45
       16 CALL                             R5 4 1
       17 SETTABLEKS                       R5 R4 K4 ["Size"]
       19 DUPTABLE                         R5 K11 [{"UIPadding", "Header"}]
       20 GETUPVAL                         R6 0
       21 GETTABLEKS                       R6 R6 K1 ["createElement"]
       23 LOADK                            R7 K9 ["UIPadding"]
       24 DUPTABLE                         R8 K13 [{"PaddingLeft"}]
       25 GETIMPORT                        R9 K15 [UDim.new]
       27 LOADN                            R10 0
       28 LOADN                            R11 251
       29 CALL                             R9 2 1
       30 SETTABLEKS                       R9 R8 K12 ["PaddingLeft"]
       32 CALL                             R6 2 1
       33 SETTABLEKS                       R6 R5 K9 ["UIPadding"]
       35 GETUPVAL                         R6 0
       36 GETTABLEKS                       R6 R6 K1 ["createElement"]
       38 LOADK                            R7 K16 ["TextLabel"]
       39 DUPTABLE                         R8 K24 [{"BackgroundTransparency", "Font", "LayoutOrder", "Text", "TextColor3", "TextSize", "TextXAlignment", "TextYAlignment", "Size"}]
       40 LOADN                            R9 1
       41 SETTABLEKS                       R9 R8 K3 ["BackgroundTransparency"]
       43 GETUPVAL                         R9 1
       44 GETTABLEKS                       R9 R9 K25 ["FONT"]
       46 SETTABLEKS                       R9 R8 K17 ["Font"]
       48 GETTABLEKS                       R10 R1 K18 ["LayoutOrder"]
       50 ORK                              R9 R10 K26 [1]
       51 SETTABLEKS                       R9 R8 K18 ["LayoutOrder"]
       53 GETTABLEKS                       R9 R1 K27 ["Title"]
       55 SETTABLEKS                       R9 R8 K19 ["Text"]
       57 GETTABLEKS                       R9 R1 K28 ["Stylizer"]
       59 GETTABLEKS                       R9 R9 K29 ["publishAsset"]
       61 GETTABLEKS                       R9 R9 K30 ["textColor"]
       63 SETTABLEKS                       R9 R8 K20 ["TextColor3"]
       65 LOADN                            R9 24
       66 SETTABLEKS                       R9 R8 K21 ["TextSize"]
       68 GETIMPORT                        R9 K33 [Enum.TextXAlignment.Left]
       70 SETTABLEKS                       R9 R8 K22 ["TextXAlignment"]
       72 GETIMPORT                        R9 K35 [Enum.TextYAlignment.Top]
       74 SETTABLEKS                       R9 R8 K23 ["TextYAlignment"]
       76 GETIMPORT                        R9 K8 [UDim2.new]
       78 LOADN                            R10 0
       79 LOADN                            R11 0
       80 LOADN                            R12 0
       81 LOADN                            R13 45
       82 CALL                             R9 4 1
       83 SETTABLEKS                       R9 R8 K4 ["Size"]
       85 CALL                             R6 2 1
       86 SETTABLEKS                       R6 R5 K10 ["Header"]
       88 CALL                             R2 3 -1
       89 RETURN                           R2 -1

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
