PROTO_0:
        0 GETTABLEKS                       R2 R0 K0 ["props"]
        2 GETTABLEKS                       R1 R2 K1 ["Stylizer"]
        4 GETUPVAL                         R3 0
        5 GETTABLEKS                       R2 R3 K2 ["createElement"]
        7 LOADK                            R3 K3 ["TextButton"]
        8 NEWTABLE                         R4 8 0
       10 GETTABLEKS                       R6 R0 K0 ["props"]
       12 GETTABLEKS                       R5 R6 K4 ["Size"]
       14 SETTABLEKS                       R5 R4 K4 ["Size"]
       16 GETTABLEKS                       R6 R0 K0 ["props"]
       18 GETTABLEKS                       R5 R6 K5 ["Position"]
       20 SETTABLEKS                       R5 R4 K5 ["Position"]
       22 GETTABLEKS                       R5 R1 K6 ["BackgroundColor"]
       24 SETTABLEKS                       R5 R4 K7 ["BackgroundColor3"]
       26 LOADN                            R5 0
       27 SETTABLEKS                       R5 R4 K8 ["BackgroundTransparency"]
       29 GETTABLEKS                       R7 R0 K0 ["props"]
       31 GETTABLEKS                       R6 R7 K10 ["LayoutOrder"]
       33 ORK                              R5 R6 K9 [0]
       34 SETTABLEKS                       R5 R4 K10 ["LayoutOrder"]
       36 GETTABLEKS                       R6 R0 K0 ["props"]
       38 GETTABLEKS                       R5 R6 K11 ["Text"]
       40 JUMPIF                           R5 ; [+3]
       41 NAMECALL                         R5 R1 K12 ["getPathString"]
       43 CALL                             R5 1 1
       44 SETTABLEKS                       R5 R4 K11 ["Text"]
       46 GETTABLEKS                       R5 R1 K13 ["TextColor3"]
       48 SETTABLEKS                       R5 R4 K13 ["TextColor3"]
       50 GETUPVAL                         R7 0
       51 GETTABLEKS                       R6 R7 K14 ["Event"]
       53 GETTABLEKS                       R5 R6 K15 ["Activated"]
       55 GETTABLEKS                       R7 R0 K0 ["props"]
       57 GETTABLEKS                       R6 R7 K16 ["OnClick"]
       59 SETTABLE                         R6 R4 R5
       60 CALL                             R2 2 -1
       61 RETURN                           R2 -1

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
       34 LOADK                            R7 K13 ["Button"]
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
