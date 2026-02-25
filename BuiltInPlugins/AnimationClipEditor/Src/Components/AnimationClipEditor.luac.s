PROTO_0:
        0 GETTABLEKS                       R2 R0 K0 ["props"]
        2 GETTABLEKS                       R1 R2 K1 ["Stylizer"]
        4 GETUPVAL                         R3 0
        5 GETTABLEKS                       R2 R3 K2 ["createElement"]
        7 LOADK                            R3 K3 ["Frame"]
        8 DUPTABLE                         R4 K6 [{"Size", "BackgroundColor3"}]
        9 GETIMPORT                        R5 K9 [UDim2.new]
       11 LOADN                            R6 1
       12 LOADN                            R7 0
       13 LOADN                            R8 1
       14 LOADN                            R9 0
       15 CALL                             R5 4 1
       16 SETTABLEKS                       R5 R4 K4 ["Size"]
       18 GETTABLEKS                       R5 R1 K10 ["backgroundColor"]
       20 SETTABLEKS                       R5 R4 K5 ["BackgroundColor3"]
       22 DUPTABLE                         R5 K12 [{"EditorController"}]
       23 GETUPVAL                         R7 0
       24 GETTABLEKS                       R6 R7 K2 ["createElement"]
       26 GETUPVAL                         R7 1
       27 DUPTABLE                         R8 K13 [{"Size"}]
       28 GETIMPORT                        R9 K9 [UDim2.new]
       30 LOADN                            R10 1
       31 LOADN                            R11 0
       32 LOADN                            R12 1
       33 LOADN                            R13 0
       34 CALL                             R9 4 1
       35 SETTABLEKS                       R9 R8 K4 ["Size"]
       37 CALL                             R6 2 1
       38 SETTABLEKS                       R6 R5 K11 ["EditorController"]
       40 CALL                             R2 3 -1
       41 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R1 K1 [script]
        3 GETTABLEKS                       R0 R1 K2 ["Parent"]
        5 LOADK                            R2 K3 ["AnimationClipEditor"]
        6 NAMECALL                         R0 R0 K4 ["FindFirstAncestor"]
        8 CALL                             R0 2 1
        9 GETIMPORT                        R1 K6 [require]
       11 GETTABLEKS                       R3 R0 K7 ["Packages"]
       13 GETTABLEKS                       R2 R3 K8 ["Roact"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K6 [require]
       18 GETTABLEKS                       R4 R0 K7 ["Packages"]
       20 GETTABLEKS                       R3 R4 K9 ["Framework"]
       22 CALL                             R2 1 1
       23 GETTABLEKS                       R3 R2 K10 ["ContextServices"]
       25 GETTABLEKS                       R4 R3 K11 ["withContext"]
       27 GETIMPORT                        R5 K6 [require]
       29 GETTABLEKS                       R8 R0 K12 ["Src"]
       31 GETTABLEKS                       R7 R8 K13 ["Components"]
       33 GETTABLEKS                       R6 R7 K14 ["EditorController"]
       35 CALL                             R5 1 1
       36 GETTABLEKS                       R6 R1 K15 ["PureComponent"]
       38 LOADK                            R8 K3 ["AnimationClipEditor"]
       39 NAMECALL                         R6 R6 K16 ["extend"]
       41 CALL                             R6 2 1
       42 DUPCLOSURE                       R7 K17 [PROTO_0]
       43 CAPTURE                          VAL R1
       44 CAPTURE                          VAL R5
       45 SETTABLEKS                       R7 R6 K18 ["render"]
       47 MOVE                             R7 R4
       48 DUPTABLE                         R8 K23 [{"Localization", "Plugin", "Stylizer", "Analytics"}]
       49 GETTABLEKS                       R9 R3 K19 ["Localization"]
       51 SETTABLEKS                       R9 R8 K19 ["Localization"]
       53 GETTABLEKS                       R9 R3 K20 ["Plugin"]
       55 SETTABLEKS                       R9 R8 K20 ["Plugin"]
       57 GETTABLEKS                       R9 R3 K21 ["Stylizer"]
       59 SETTABLEKS                       R9 R8 K21 ["Stylizer"]
       61 GETTABLEKS                       R9 R3 K22 ["Analytics"]
       63 SETTABLEKS                       R9 R8 K22 ["Analytics"]
       65 CALL                             R7 1 1
       66 MOVE                             R8 R6
       67 CALL                             R7 1 1
       68 MOVE                             R6 R7
       69 RETURN                           R6 1
