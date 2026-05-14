PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Size"]
        4 GETTABLEKS                       R3 R1 K2 ["Stylizer"]
        6 GETTABLEKS                       R4 R1 K3 ["LayoutOrder"]
        8 GETUPVAL                         R5 0
        9 GETTABLEKS                       R5 R5 K4 ["createElement"]
       11 GETUPVAL                         R6 1
       12 DUPTABLE                         R7 K10 [{"Size", "LayoutOrder", "Layout", "HorizontalAlignment", "VerticalAlignment", "Spacing", "Padding"}]
       13 SETTABLEKS                       R2 R7 K1 ["Size"]
       15 SETTABLEKS                       R4 R7 K3 ["LayoutOrder"]
       17 GETIMPORT                        R8 K14 [Enum.FillDirection.Vertical]
       19 SETTABLEKS                       R8 R7 K5 ["Layout"]
       21 GETIMPORT                        R8 K16 [Enum.HorizontalAlignment.Right]
       23 SETTABLEKS                       R8 R7 K6 ["HorizontalAlignment"]
       25 GETIMPORT                        R8 K18 [Enum.VerticalAlignment.Bottom]
       27 SETTABLEKS                       R8 R7 K7 ["VerticalAlignment"]
       29 GETTABLEKS                       R8 R3 K8 ["Spacing"]
       31 SETTABLEKS                       R8 R7 K8 ["Spacing"]
       33 GETTABLEKS                       R8 R3 K9 ["Padding"]
       35 SETTABLEKS                       R8 R7 K9 ["Padding"]
       37 DUPTABLE                         R8 K20 [{"Buttons"}]
       38 GETUPVAL                         R9 0
       39 GETTABLEKS                       R9 R9 K4 ["createElement"]
       41 GETUPVAL                         R10 2
       42 CALL                             R9 1 1
       43 SETTABLEKS                       R9 R8 K19 ["Buttons"]
       45 CALL                             R5 3 -1
       46 RETURN                           R5 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["R15Migrator"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["Roact"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R3 R1 K9 ["UI"]
       23 GETTABLEKS                       R4 R3 K10 ["Pane"]
       25 GETTABLEKS                       R5 R1 K11 ["ContextServices"]
       27 GETIMPORT                        R6 K5 [require]
       29 GETTABLEKS                       R7 R0 K12 ["Src"]
       31 GETTABLEKS                       R7 R7 K13 ["Components"]
       33 GETTABLEKS                       R7 R7 K14 ["ReplaceRevertButtons"]
       35 CALL                             R6 1 1
       36 GETTABLEKS                       R7 R2 K15 ["PureComponent"]
       38 LOADK                            R9 K16 ["AnimationConversionPaneFooter"]
       39 NAMECALL                         R7 R7 K17 ["extend"]
       41 CALL                             R7 2 1
       42 DUPCLOSURE                       R8 K18 [PROTO_0]
       43 CAPTURE                          VAL R2
       44 CAPTURE                          VAL R4
       45 CAPTURE                          VAL R6
       46 SETTABLEKS                       R8 R7 K19 ["render"]
       48 GETTABLEKS                       R8 R5 K20 ["withContext"]
       50 DUPTABLE                         R9 K22 [{"Stylizer"}]
       51 GETTABLEKS                       R10 R5 K21 ["Stylizer"]
       53 SETTABLEKS                       R10 R9 K21 ["Stylizer"]
       55 CALL                             R8 1 1
       56 MOVE                             R9 R7
       57 CALL                             R8 1 1
       58 MOVE                             R7 R8
       59 RETURN                           R7 1
