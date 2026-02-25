PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Stylizer"]
        4 GETUPVAL                         R4 0
        5 GETTABLEKS                       R3 R4 K2 ["createElement"]
        7 LOADK                            R4 K3 ["Frame"]
        8 DUPTABLE                         R5 K9 [{"Size", "Position", "BackgroundColor3", "BorderSizePixel", "LayoutOrder"}]
        9 GETTABLEKS                       R6 R1 K4 ["Size"]
       11 JUMPIF                           R6 ; [+7]
       12 GETIMPORT                        R6 K12 [UDim2.new]
       14 LOADN                            R7 1
       15 LOADN                            R8 0
       16 LOADN                            R9 0
       17 LOADN                            R10 2
       18 CALL                             R6 4 1
       19 SETTABLEKS                       R6 R5 K4 ["Size"]
       21 GETTABLEKS                       R6 R1 K5 ["Position"]
       23 SETTABLEKS                       R6 R5 K5 ["Position"]
       25 GETTABLEKS                       R6 R2 K13 ["separator"]
       27 SETTABLEKS                       R6 R5 K6 ["BackgroundColor3"]
       29 LOADN                            R6 0
       30 SETTABLEKS                       R6 R5 K7 ["BorderSizePixel"]
       32 GETTABLEKS                       R7 R1 K8 ["LayoutOrder"]
       34 ORK                              R6 R7 K14 [1]
       35 SETTABLEKS                       R6 R5 K8 ["LayoutOrder"]
       37 CALL                             R3 2 -1
       38 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R3 K1 [script]
        3 GETTABLEKS                       R2 R3 K2 ["Parent"]
        5 GETTABLEKS                       R1 R2 K2 ["Parent"]
        7 GETTABLEKS                       R0 R1 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R3 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R3 K6 ["Roact"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R4 R0 K5 ["Packages"]
       20 GETTABLEKS                       R3 R4 K7 ["Framework"]
       22 CALL                             R2 1 1
       23 GETTABLEKS                       R3 R2 K8 ["ContextServices"]
       25 GETTABLEKS                       R4 R3 K9 ["withContext"]
       27 GETTABLEKS                       R5 R1 K10 ["PureComponent"]
       29 LOADK                            R7 K11 ["Separator"]
       30 NAMECALL                         R5 R5 K12 ["extend"]
       32 CALL                             R5 2 1
       33 DUPCLOSURE                       R6 K13 [PROTO_0]
       34 CAPTURE                          VAL R1
       35 SETTABLEKS                       R6 R5 K14 ["render"]
       37 MOVE                             R6 R4
       38 DUPTABLE                         R7 K16 [{"Stylizer"}]
       39 GETTABLEKS                       R8 R3 K15 ["Stylizer"]
       41 SETTABLEKS                       R8 R7 K15 ["Stylizer"]
       43 CALL                             R6 1 1
       44 MOVE                             R7 R5
       45 CALL                             R6 1 1
       46 MOVE                             R5 R6
       47 RETURN                           R5 1
