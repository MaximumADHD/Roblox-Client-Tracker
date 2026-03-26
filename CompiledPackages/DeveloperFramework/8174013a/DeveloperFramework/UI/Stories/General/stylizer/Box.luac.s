PROTO_0:
        0 GETTABLEKS                       R2 R0 K0 ["props"]
        2 GETTABLEKS                       R1 R2 K1 ["Stylizer"]
        4 GETUPVAL                         R3 0
        5 GETTABLEKS                       R2 R3 K2 ["createElement"]
        7 LOADK                            R3 K3 ["Frame"]
        8 DUPTABLE                         R4 K10 [{"Size", "Position", "BorderSizePixel", "BackgroundColor3", "BackgroundTransparency", "LayoutOrder"}]
        9 GETTABLEKS                       R6 R0 K0 ["props"]
       11 GETTABLEKS                       R5 R6 K4 ["Size"]
       13 SETTABLEKS                       R5 R4 K4 ["Size"]
       15 GETTABLEKS                       R6 R0 K0 ["props"]
       17 GETTABLEKS                       R5 R6 K5 ["Position"]
       19 SETTABLEKS                       R5 R4 K5 ["Position"]
       21 LOADN                            R5 0
       22 SETTABLEKS                       R5 R4 K6 ["BorderSizePixel"]
       24 GETTABLEKS                       R5 R1 K11 ["BackgroundColor"]
       26 SETTABLEKS                       R5 R4 K7 ["BackgroundColor3"]
       28 LOADN                            R5 0
       29 SETTABLEKS                       R5 R4 K8 ["BackgroundTransparency"]
       31 GETTABLEKS                       R7 R0 K0 ["props"]
       33 GETTABLEKS                       R6 R7 K9 ["LayoutOrder"]
       35 ORK                              R5 R6 K12 [0]
       36 SETTABLEKS                       R5 R4 K9 ["LayoutOrder"]
       38 DUPTABLE                         R5 K14 [{"FrontText"}]
       39 GETUPVAL                         R7 0
       40 GETTABLEKS                       R6 R7 K2 ["createElement"]
       42 LOADK                            R7 K15 ["TextLabel"]
       43 DUPTABLE                         R8 K18 [{"Text", "Size", "BackgroundTransparency", "LayoutOrder", "TextColor3"}]
       44 NAMECALL                         R9 R1 K19 ["getPathString"]
       46 CALL                             R9 1 1
       47 SETTABLEKS                       R9 R8 K16 ["Text"]
       49 GETIMPORT                        R9 K22 [UDim2.new]
       51 LOADN                            R10 1
       52 LOADN                            R11 0
       53 LOADN                            R12 1
       54 LOADN                            R13 196
       55 CALL                             R9 4 1
       56 SETTABLEKS                       R9 R8 K4 ["Size"]
       58 LOADN                            R9 1
       59 SETTABLEKS                       R9 R8 K8 ["BackgroundTransparency"]
       61 LOADN                            R9 1
       62 SETTABLEKS                       R9 R8 K9 ["LayoutOrder"]
       64 GETTABLEKS                       R9 R1 K17 ["TextColor3"]
       66 SETTABLEKS                       R9 R8 K17 ["TextColor3"]
       68 CALL                             R6 2 1
       69 SETTABLEKS                       R6 R5 K13 ["FrontText"]
       71 CALL                             R2 3 -1
       72 RETURN                           R2 -1

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
       32 GETTABLEKS                       R5 R3 K12 ["PureComponent"]
       34 LOADK                            R7 K13 ["Box"]
       35 NAMECALL                         R5 R5 K14 ["extend"]
       37 CALL                             R5 2 1
       38 DUPCLOSURE                       R6 K15 [PROTO_0]
       39 CAPTURE                          VAL R3
       40 SETTABLEKS                       R6 R5 K16 ["render"]
       42 MOVE                             R6 R2
       43 DUPTABLE                         R7 K17 [{"Stylizer"}]
       44 SETTABLEKS                       R4 R7 K11 ["Stylizer"]
       46 CALL                             R6 1 1
       47 MOVE                             R7 R5
       48 CALL                             R6 1 1
       49 MOVE                             R5 R6
       50 RETURN                           R5 1
