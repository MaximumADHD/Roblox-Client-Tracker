PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Stylizer"]
        4 GETTABLEKS                       R3 R2 K2 ["Color"]
        6 GETTABLEKS                       R4 R2 K3 ["Transparency"]
        8 GETTABLEKS                       R5 R2 K4 ["BorderColor"]
       10 GETTABLEKS                       R7 R2 K6 ["BorderSize"]
       12 ORK                              R6 R7 K5 [0]
       13 GETUPVAL                         R8 0
       14 GETTABLEKS                       R7 R8 K7 ["createElement"]
       16 LOADK                            R8 K8 ["Frame"]
       17 DUPTABLE                         R9 K14 [{"Size", "BackgroundColor3", "BackgroundTransparency", "BorderColor3", "BorderSizePixel"}]
       18 GETIMPORT                        R10 K17 [UDim2.new]
       20 LOADN                            R11 1
       21 LOADN                            R12 0
       22 LOADN                            R13 1
       23 LOADN                            R14 0
       24 CALL                             R10 4 1
       25 SETTABLEKS                       R10 R9 K9 ["Size"]
       27 SETTABLEKS                       R3 R9 K10 ["BackgroundColor3"]
       29 SETTABLEKS                       R4 R9 K11 ["BackgroundTransparency"]
       31 SETTABLEKS                       R5 R9 K12 ["BorderColor3"]
       33 SETTABLEKS                       R6 R9 K13 ["BorderSizePixel"]
       35 GETUPVAL                         R12 0
       36 GETTABLEKS                       R11 R12 K18 ["Children"]
       38 GETTABLE                         R10 R1 R11
       39 CALL                             R7 3 -1
       40 RETURN                           R7 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R1 K1 [script]
        3 LOADK                            R3 K2 ["UI"]
        4 NAMECALL                         R1 R1 K3 ["FindFirstAncestor"]
        6 CALL                             R1 2 1
        7 GETTABLEKS                       R0 R1 K4 ["Parent"]
        9 GETIMPORT                        R1 K6 [require]
       11 GETTABLEKS                       R3 R0 K4 ["Parent"]
       13 GETTABLEKS                       R2 R3 K7 ["Roact"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K6 [require]
       18 GETTABLEKS                       R4 R0 K2 ["UI"]
       20 GETTABLEKS                       R3 R4 K8 ["ContextServices"]
       22 CALL                             R2 1 1
       23 GETTABLEKS                       R3 R2 K9 ["withContext"]
       25 GETIMPORT                        R4 K6 [require]
       27 GETTABLEKS                       R6 R0 K10 ["Util"]
       29 GETTABLEKS                       R5 R6 K11 ["Typecheck"]
       31 CALL                             R4 1 1
       32 GETTABLEKS                       R5 R1 K12 ["PureComponent"]
       34 LOADK                            R7 K13 ["Box"]
       35 NAMECALL                         R5 R5 K14 ["extend"]
       37 CALL                             R5 2 1
       38 GETTABLEKS                       R6 R4 K15 ["wrap"]
       40 MOVE                             R7 R5
       41 GETIMPORT                        R8 K1 [script]
       43 CALL                             R6 2 0
       44 DUPCLOSURE                       R6 K16 [PROTO_0]
       45 CAPTURE                          VAL R1
       46 SETTABLEKS                       R6 R5 K17 ["render"]
       48 MOVE                             R6 R3
       49 DUPTABLE                         R7 K19 [{"Stylizer"}]
       50 GETTABLEKS                       R8 R2 K18 ["Stylizer"]
       52 SETTABLEKS                       R8 R7 K18 ["Stylizer"]
       54 CALL                             R6 1 1
       55 MOVE                             R7 R5
       56 CALL                             R6 1 1
       57 MOVE                             R5 R6
       58 RETURN                           R5 1
