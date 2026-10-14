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
       13 GETIMPORT                        R2 K8 [require]
       15 GETTABLEKS                       R3 R1 K6 ["Parent"]
       17 GETTABLEKS                       R3 R3 K9 ["Roact"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K8 [require]
       22 GETTABLEKS                       R4 R1 K10 ["Utility"]
       24 GETTABLEKS                       R4 R4 K11 ["Colors"]
       26 CALL                             R3 1 1
       27 GETTABLEKS                       R4 R2 K12 ["Component"]
       29 LOADK                            R6 K13 ["SelectionDot"]
       30 NAMECALL                         R4 R4 K14 ["extend"]
       32 CALL                             R4 2 1
       33 DUPTABLE                         R5 K20 [{["BackgroundColor3"], ["BorderColor3"], ["Position"], ["Size"] = 3}]
       34 GETTABLEKS                       R6 R3 K21 ["WHITE"]
       36 SETTABLEKS                       R6 R5 K15 ["BackgroundColor3"]
       38 GETTABLEKS                       R6 R3 K22 ["BLACK"]
       40 SETTABLEKS                       R6 R5 K16 ["BorderColor3"]
       42 FASTCALL                         VECTOR ; [+2]
       43 GETIMPORT                        R6 K25 [Vector3.new]
       45 CALL                             R6 0 1
       46 SETTABLEKS                       R6 R5 K17 ["Position"]
       48 SETTABLEKS                       R5 R4 K26 ["defaultProps"]
       50 DUPCLOSURE                       R5 K27 [PROTO_0]
       51 CAPTURE                          VAL R0
       52 CAPTURE                          VAL R2
       53 SETTABLEKS                       R5 R4 K28 ["render"]
       55 RETURN                           R4 1
