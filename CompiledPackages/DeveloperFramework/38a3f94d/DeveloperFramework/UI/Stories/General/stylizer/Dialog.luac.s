PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R1 R1 K1 ["Stylizer"]
        4 GETUPVAL                         R2 0
        5 GETTABLEKS                       R2 R2 K2 ["createElement"]
        7 LOADK                            R3 K3 ["Frame"]
        8 DUPTABLE                         R4 K9 [{["Size"], ["Position"], ["BackgroundColor3"], ["BackgroundTransparency"] = 0}]
        9 GETTABLEKS                       R5 R0 K0 ["props"]
       11 GETTABLEKS                       R5 R5 K4 ["Size"]
       13 SETTABLEKS                       R5 R4 K4 ["Size"]
       15 GETTABLEKS                       R5 R0 K0 ["props"]
       17 GETTABLEKS                       R5 R5 K5 ["Position"]
       19 SETTABLEKS                       R5 R4 K5 ["Position"]
       21 GETTABLEKS                       R5 R1 K10 ["BackgroundColor"]
       23 SETTABLEKS                       R5 R4 K6 ["BackgroundColor3"]
       25 DUPTABLE                         R5 K14 [{"Layout", "FrontText", "Box"}]
       26 GETUPVAL                         R6 0
       27 GETTABLEKS                       R6 R6 K2 ["createElement"]
       29 LOADK                            R7 K15 ["UIListLayout"]
       30 DUPTABLE                         R8 K18 [{"SortOrder", "HorizontalAlignment"}]
       31 GETIMPORT                        R9 K21 [Enum.SortOrder.LayoutOrder]
       33 SETTABLEKS                       R9 R8 K16 ["SortOrder"]
       35 GETIMPORT                        R9 K23 [Enum.HorizontalAlignment.Center]
       37 SETTABLEKS                       R9 R8 K17 ["HorizontalAlignment"]
       39 CALL                             R6 2 1
       40 SETTABLEKS                       R6 R5 K11 ["Layout"]
       42 GETUPVAL                         R6 0
       43 GETTABLEKS                       R6 R6 K2 ["createElement"]
       45 LOADK                            R7 K24 ["TextLabel"]
       46 DUPTABLE                         R8 K28 [{["Text"], ["Size"], ["BackgroundTransparency"] = 1, ["LayoutOrder"] = 1, ["TextColor3"]}]
       47 NAMECALL                         R9 R1 K29 ["getPathString"]
       49 CALL                             R9 1 1
       50 SETTABLEKS                       R9 R8 K25 ["Text"]
       52 GETIMPORT                        R9 K32 [UDim2.new]
       54 LOADN                            R10 1
       55 LOADN                            R11 0
       56 LOADN                            R12 1
       57 LOADN                            R13 -60
       58 CALL                             R9 4 1
       59 SETTABLEKS                       R9 R8 K4 ["Size"]
       61 GETTABLEKS                       R9 R1 K27 ["TextColor3"]
       63 SETTABLEKS                       R9 R8 K27 ["TextColor3"]
       65 CALL                             R6 2 1
       66 SETTABLEKS                       R6 R5 K12 ["FrontText"]
       68 GETUPVAL                         R6 0
       69 GETTABLEKS                       R6 R6 K2 ["createElement"]
       71 GETUPVAL                         R7 1
       72 DUPTABLE                         R8 K33 [{"Position", "Size"}]
       73 GETIMPORT                        R9 K35 [UDim2.fromOffset]
       75 LOADN                            R10 10
       76 LOADN                            R11 10
       77 CALL                             R9 2 1
       78 SETTABLEKS                       R9 R8 K5 ["Position"]
       80 GETIMPORT                        R9 K32 [UDim2.new]
       82 LOADN                            R10 1
       83 LOADN                            R11 -20
       84 LOADN                            R12 0
       85 LOADN                            R13 100
       86 CALL                             R9 4 1
       87 SETTABLEKS                       R9 R8 K4 ["Size"]
       89 CALL                             R6 2 1
       90 SETTABLEKS                       R6 R5 K13 ["Box"]
       92 CALL                             R2 3 -1
       93 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["UI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R0 R0 K4 ["Parent"]
        9 GETIMPORT                        R1 K6 [require]
       11 GETTABLEKS                       R2 R0 K2 ["UI"]
       13 GETTABLEKS                       R2 R2 K7 ["ContextServices"]
       15 CALL                             R1 1 1
       16 GETTABLEKS                       R2 R1 K8 ["withContext"]
       18 GETIMPORT                        R3 K6 [require]
       20 GETTABLEKS                       R4 R0 K4 ["Parent"]
       22 GETTABLEKS                       R4 R4 K9 ["Roact"]
       24 CALL                             R3 1 1
       25 GETIMPORT                        R4 K6 [require]
       27 GETTABLEKS                       R5 R0 K10 ["Style"]
       29 CALL                             R4 1 1
       30 GETTABLEKS                       R4 R4 K11 ["Stylizer"]
       32 GETIMPORT                        R5 K6 [require]
       34 GETIMPORT                        R6 K1 [script]
       36 GETTABLEKS                       R6 R6 K4 ["Parent"]
       38 GETTABLEKS                       R6 R6 K12 ["Box"]
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
