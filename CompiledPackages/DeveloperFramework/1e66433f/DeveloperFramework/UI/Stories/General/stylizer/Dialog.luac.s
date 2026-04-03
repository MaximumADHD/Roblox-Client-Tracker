PROTO_0:
        0 GETTABLEKS                       R2 R0 K0 ["props"]
        2 GETTABLEKS                       R1 R2 K1 ["Stylizer"]
        4 GETUPVAL                         R3 0
        5 GETTABLEKS                       R2 R3 K2 ["createElement"]
        7 LOADK                            R3 K3 ["Frame"]
        8 DUPTABLE                         R4 K8 [{"Size", "Position", "BackgroundColor3", "BackgroundTransparency"}]
        9 GETTABLEKS                       R6 R0 K0 ["props"]
       11 GETTABLEKS                       R5 R6 K4 ["Size"]
       13 SETTABLEKS                       R5 R4 K4 ["Size"]
       15 GETTABLEKS                       R6 R0 K0 ["props"]
       17 GETTABLEKS                       R5 R6 K5 ["Position"]
       19 SETTABLEKS                       R5 R4 K5 ["Position"]
       21 GETTABLEKS                       R5 R1 K9 ["BackgroundColor"]
       23 SETTABLEKS                       R5 R4 K6 ["BackgroundColor3"]
       25 LOADN                            R5 0
       26 SETTABLEKS                       R5 R4 K7 ["BackgroundTransparency"]
       28 DUPTABLE                         R5 K13 [{"Layout", "FrontText", "Box"}]
       29 GETUPVAL                         R7 0
       30 GETTABLEKS                       R6 R7 K2 ["createElement"]
       32 LOADK                            R7 K14 ["UIListLayout"]
       33 DUPTABLE                         R8 K17 [{"SortOrder", "HorizontalAlignment"}]
       34 GETIMPORT                        R9 K20 [Enum.SortOrder.LayoutOrder]
       36 SETTABLEKS                       R9 R8 K15 ["SortOrder"]
       38 GETIMPORT                        R9 K22 [Enum.HorizontalAlignment.Center]
       40 SETTABLEKS                       R9 R8 K16 ["HorizontalAlignment"]
       42 CALL                             R6 2 1
       43 SETTABLEKS                       R6 R5 K10 ["Layout"]
       45 GETUPVAL                         R7 0
       46 GETTABLEKS                       R6 R7 K2 ["createElement"]
       48 LOADK                            R7 K23 ["TextLabel"]
       49 DUPTABLE                         R8 K26 [{"Text", "Size", "BackgroundTransparency", "LayoutOrder", "TextColor3"}]
       50 NAMECALL                         R9 R1 K27 ["getPathString"]
       52 CALL                             R9 1 1
       53 SETTABLEKS                       R9 R8 K24 ["Text"]
       55 GETIMPORT                        R9 K30 [UDim2.new]
       57 LOADN                            R10 1
       58 LOADN                            R11 0
       59 LOADN                            R12 1
       60 LOADN                            R13 196
       61 CALL                             R9 4 1
       62 SETTABLEKS                       R9 R8 K4 ["Size"]
       64 LOADN                            R9 1
       65 SETTABLEKS                       R9 R8 K7 ["BackgroundTransparency"]
       67 LOADN                            R9 1
       68 SETTABLEKS                       R9 R8 K19 ["LayoutOrder"]
       70 GETTABLEKS                       R9 R1 K25 ["TextColor3"]
       72 SETTABLEKS                       R9 R8 K25 ["TextColor3"]
       74 CALL                             R6 2 1
       75 SETTABLEKS                       R6 R5 K11 ["FrontText"]
       77 GETUPVAL                         R7 0
       78 GETTABLEKS                       R6 R7 K2 ["createElement"]
       80 GETUPVAL                         R7 1
       81 DUPTABLE                         R8 K31 [{"Position", "Size"}]
       82 GETIMPORT                        R9 K33 [UDim2.fromOffset]
       84 LOADN                            R10 10
       85 LOADN                            R11 10
       86 CALL                             R9 2 1
       87 SETTABLEKS                       R9 R8 K5 ["Position"]
       89 GETIMPORT                        R9 K30 [UDim2.new]
       91 LOADN                            R10 1
       92 LOADN                            R11 236
       93 LOADN                            R12 0
       94 LOADN                            R13 100
       95 CALL                             R9 4 1
       96 SETTABLEKS                       R9 R8 K4 ["Size"]
       98 CALL                             R6 2 1
       99 SETTABLEKS                       R6 R5 K12 ["Box"]
      101 CALL                             R2 3 -1
      102 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R1 K1 [script]
        3 LOADK                            R3 K2 ["UI"]
        4 NAMECALL                         R1 R1 K3 ["FindFirstAncestor"]
        6 CALL                             R1 2 1
        7 GETTABLEKS                       R0 R1 K4 ["Parent"]
        9 GETIMPORT                        R1 K6 [require]
       11 GETTABLEKS                       R3 R0 K2 ["UI"]
       13 GETTABLEKS                       R2 R3 K7 ["ContextServices"]
       15 CALL                             R1 1 1
       16 GETTABLEKS                       R2 R1 K8 ["withContext"]
       18 GETIMPORT                        R3 K6 [require]
       20 GETTABLEKS                       R5 R0 K4 ["Parent"]
       22 GETTABLEKS                       R4 R5 K9 ["Roact"]
       24 CALL                             R3 1 1
       25 GETIMPORT                        R5 K6 [require]
       27 GETTABLEKS                       R6 R0 K10 ["Style"]
       29 CALL                             R5 1 1
       30 GETTABLEKS                       R4 R5 K11 ["Stylizer"]
       32 GETIMPORT                        R5 K6 [require]
       34 GETIMPORT                        R8 K1 [script]
       36 GETTABLEKS                       R7 R8 K4 ["Parent"]
       38 GETTABLEKS                       R6 R7 K12 ["Box"]
       40 CALL                             R5 1 1
       41 GETTABLEKS                       R6 R3 K13 ["PureComponent"]
       43 LOADK                            R8 K14 ["Dialog"]
       44 NAMECALL                         R6 R6 K15 ["extend"]
       46 CALL                             R6 2 1
       47 DUPCLOSURE                       R7 K16 [PROTO_0]
       48 CAPTURE                          VAL R3
       49 CAPTURE                          VAL R5
       50 SETTABLEKS                       R7 R6 K17 ["render"]
       52 MOVE                             R7 R2
       53 DUPTABLE                         R8 K18 [{"Stylizer"}]
       54 SETTABLEKS                       R4 R8 K11 ["Stylizer"]
       56 CALL                             R7 1 1
       57 MOVE                             R8 R6
       58 CALL                             R7 1 1
       59 MOVE                             R6 R7
       60 RETURN                           R6 1
