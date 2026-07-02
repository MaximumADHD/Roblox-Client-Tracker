PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R1 R1 K1 ["Size"]
        4 GETTABLEKS                       R2 R0 K0 ["props"]
        6 GETTABLEKS                       R2 R2 K2 ["Text"]
        8 GETTABLEKS                       R3 R0 K0 ["props"]
       10 GETTABLEKS                       R3 R3 K3 ["LayoutOrder"]
       12 GETTABLEKS                       R4 R0 K0 ["props"]
       14 GETTABLEKS                       R4 R4 K4 ["Alignment"]
       16 GETTABLEKS                       R5 R0 K0 ["props"]
       18 GETTABLEKS                       R5 R5 K5 ["Stylizer"]
       20 GETUPVAL                         R6 0
       21 GETTABLEKS                       R6 R6 K6 ["createElement"]
       23 LOADK                            R7 K7 ["TextLabel"]
       24 GETUPVAL                         R8 1
       25 GETTABLEKS                       R8 R8 K8 ["Dictionary"]
       27 GETTABLEKS                       R8 R8 K9 ["join"]
       29 GETTABLEKS                       R9 R5 K10 ["fontStyle"]
       31 GETTABLEKS                       R9 R9 K11 ["Normal"]
       33 DUPTABLE                         R10 K17 [{["Size"], ["Text"], ["LayoutOrder"], ["TextXAlignment"], ["BackgroundTransparency"] = 1, ["BorderSizePixel"] = 0}]
       34 SETTABLEKS                       R1 R10 K1 ["Size"]
       36 SETTABLEKS                       R2 R10 K2 ["Text"]
       38 SETTABLEKS                       R3 R10 K3 ["LayoutOrder"]
       40 SETTABLEKS                       R4 R10 K12 ["TextXAlignment"]
       42 CALL                             R8 2 -1
       43 CALL                             R6 -1 -1
       44 RETURN                           R6 -1

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
       22 GETTABLEKS                       R3 R3 K7 ["Cryo"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K4 [require]
       27 GETTABLEKS                       R4 R0 K5 ["Packages"]
       29 GETTABLEKS                       R4 R4 K8 ["Framework"]
       31 CALL                             R3 1 1
       32 GETTABLEKS                       R3 R3 K9 ["ContextServices"]
       34 GETTABLEKS                       R4 R3 K10 ["withContext"]
       36 GETTABLEKS                       R5 R1 K11 ["Component"]
       38 LOADK                            R7 K12 ["DeveloperSubscriptionListItemText"]
       39 NAMECALL                         R5 R5 K13 ["extend"]
       41 CALL                             R5 2 1
       42 DUPCLOSURE                       R6 K14 [PROTO_0]
       43 CAPTURE                          VAL R1
       44 CAPTURE                          VAL R2
       45 SETTABLEKS                       R6 R5 K15 ["render"]
       47 MOVE                             R6 R4
       48 DUPTABLE                         R7 K17 [{"Stylizer"}]
       49 GETTABLEKS                       R8 R3 K16 ["Stylizer"]
       51 SETTABLEKS                       R8 R7 K16 ["Stylizer"]
       53 CALL                             R6 1 1
       54 MOVE                             R7 R5
       55 CALL                             R6 1 1
       56 MOVE                             R5 R6
       57 RETURN                           R5 1
