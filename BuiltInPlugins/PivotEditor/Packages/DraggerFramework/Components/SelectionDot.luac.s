PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["CurrentCamera"]
        3 GETTABLEKS                       R3 R0 K1 ["props"]
        5 GETTABLEKS                       R3 R3 K2 ["Position"]
        7 NAMECALL                         R1 R1 K3 ["WorldToScreenPoint"]
        9 CALL                             R1 2 2
       10 JUMPIF                           R2 ; [+2]
       11 LOADNIL                          R3
       12 RETURN                           R3 1
       13 GETTABLEKS                       R3 R0 K1 ["props"]
       15 GETTABLEKS                       R3 R3 K4 ["Size"]
       17 GETUPVAL                         R4 1
       18 GETTABLEKS                       R4 R4 K5 ["createElement"]
       20 LOADK                            R5 K6 ["ScreenGui"]
       21 NEWTABLE                         R6 0 0
       23 NEWTABLE                         R7 0 1
       25 GETUPVAL                         R8 1
       26 GETTABLEKS                       R8 R8 K5 ["createElement"]
       28 LOADK                            R9 K7 ["Frame"]
       29 DUPTABLE                         R10 K14 [{["BackgroundColor3"], ["BorderColor3"], ["BorderSizePixel"] = 1, ["Position"], ["Selectable"] = False, ["Size"]}]
       30 GETTABLEKS                       R11 R0 K1 ["props"]
       32 GETTABLEKS                       R11 R11 K8 ["BackgroundColor3"]
       34 SETTABLEKS                       R11 R10 K8 ["BackgroundColor3"]
       36 GETTABLEKS                       R11 R0 K1 ["props"]
       38 GETTABLEKS                       R11 R11 K9 ["BorderColor3"]
       40 SETTABLEKS                       R11 R10 K9 ["BorderColor3"]
       42 GETIMPORT                        R11 K17 [UDim2.new]
       44 LOADN                            R12 0
       45 GETTABLEKS                       R13 R1 K18 ["X"]
       47 LOADN                            R14 0
       48 GETTABLEKS                       R15 R1 K19 ["Y"]
       50 CALL                             R11 4 1
       51 SETTABLEKS                       R11 R10 K2 ["Position"]
       53 GETIMPORT                        R11 K17 [UDim2.new]
       55 LOADN                            R12 0
       56 MOVE                             R13 R3
       57 LOADN                            R14 0
       58 MOVE                             R15 R3
       59 CALL                             R11 4 1
       60 SETTABLEKS                       R11 R10 K4 ["Size"]
       62 CALL                             R8 2 -1
       63 SETLIST                          R7 R8 -1 [1]
       65 CALL                             R4 3 -1
       66 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["Workspace"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [script]
        9 GETTABLEKS                       R1 R1 K6 ["Parent"]
       11 GETTABLEKS                       R1 R1 K6 ["Parent"]
       13 GETTABLEKS                       R2 R1 K6 ["Parent"]
       15 GETTABLEKS                       R2 R2 K6 ["Parent"]
       17 GETIMPORT                        R3 K8 [require]
       19 GETTABLEKS                       R4 R2 K9 ["Packages"]
       21 GETTABLEKS                       R4 R4 K10 ["Roact"]
       23 CALL                             R3 1 1
       24 GETIMPORT                        R4 K8 [require]
       26 GETTABLEKS                       R5 R1 K11 ["Utility"]
       28 GETTABLEKS                       R5 R5 K12 ["Colors"]
       30 CALL                             R4 1 1
       31 GETTABLEKS                       R5 R3 K13 ["Component"]
       33 LOADK                            R7 K14 ["SelectionDot"]
       34 NAMECALL                         R5 R5 K15 ["extend"]
       36 CALL                             R5 2 1
       37 DUPTABLE                         R6 K21 [{["BackgroundColor3"], ["BorderColor3"], ["Position"], ["Size"] = 3}]
       38 GETTABLEKS                       R7 R4 K22 ["WHITE"]
       40 SETTABLEKS                       R7 R6 K16 ["BackgroundColor3"]
       42 GETTABLEKS                       R7 R4 K23 ["BLACK"]
       44 SETTABLEKS                       R7 R6 K17 ["BorderColor3"]
       46 FASTCALL                         VECTOR ; [+2]
       47 GETIMPORT                        R7 K26 [Vector3.new]
       49 CALL                             R7 0 1
       50 SETTABLEKS                       R7 R6 K18 ["Position"]
       52 SETTABLEKS                       R6 R5 K27 ["defaultProps"]
       54 DUPCLOSURE                       R6 K28 [PROTO_0]
       55 CAPTURE                          VAL R0
       56 CAPTURE                          VAL R3
       57 SETTABLEKS                       R6 R5 K29 ["render"]
       59 RETURN                           R5 1
