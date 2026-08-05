PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R1 R1 K1 ["Stylizer"]
        4 GETUPVAL                         R2 0
        5 GETTABLEKS                       R2 R2 K2 ["createElement"]
        7 LOADK                            R3 K3 ["Frame"]
        8 DUPTABLE                         R4 K11 [{["Size"], ["Position"], ["BorderSizePixel"] = 0, ["BackgroundColor3"], ["BackgroundTransparency"] = 0, ["LayoutOrder"]}]
        9 GETTABLEKS                       R5 R0 K0 ["props"]
       11 GETTABLEKS                       R5 R5 K4 ["Size"]
       13 SETTABLEKS                       R5 R4 K4 ["Size"]
       15 GETTABLEKS                       R5 R0 K0 ["props"]
       17 GETTABLEKS                       R5 R5 K5 ["Position"]
       19 SETTABLEKS                       R5 R4 K5 ["Position"]
       21 GETTABLEKS                       R5 R1 K12 ["BackgroundColor"]
       23 SETTABLEKS                       R5 R4 K8 ["BackgroundColor3"]
       25 GETTABLEKS                       R6 R0 K0 ["props"]
       27 GETTABLEKS                       R6 R6 K10 ["LayoutOrder"]
       29 ORK                              R5 R6 K7 [0]
       30 SETTABLEKS                       R5 R4 K10 ["LayoutOrder"]
       32 DUPTABLE                         R5 K14 [{"FrontText"}]
       33 GETUPVAL                         R6 0
       34 GETTABLEKS                       R6 R6 K2 ["createElement"]
       36 LOADK                            R7 K15 ["TextLabel"]
       37 DUPTABLE                         R8 K19 [{["Text"], ["Size"], ["BackgroundTransparency"] = 1, ["LayoutOrder"] = 1, ["TextColor3"]}]
       38 NAMECALL                         R9 R1 K20 ["getPathString"]
       40 CALL                             R9 1 1
       41 SETTABLEKS                       R9 R8 K16 ["Text"]
       43 GETIMPORT                        R9 K23 [UDim2.new]
       45 LOADN                            R10 1
       46 LOADN                            R11 0
       47 LOADN                            R12 1
       48 LOADN                            R13 -60
       49 CALL                             R9 4 1
       50 SETTABLEKS                       R9 R8 K4 ["Size"]
       52 GETTABLEKS                       R9 R1 K18 ["TextColor3"]
       54 SETTABLEKS                       R9 R8 K18 ["TextColor3"]
       56 CALL                             R6 2 1
       57 SETTABLEKS                       R6 R5 K13 ["FrontText"]
       59 CALL                             R2 3 -1
       60 RETURN                           R2 -1

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
