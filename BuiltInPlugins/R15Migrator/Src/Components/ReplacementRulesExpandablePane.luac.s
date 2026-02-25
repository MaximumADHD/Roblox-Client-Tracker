PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["LayoutOrder"]
        4 GETTABLEKS                       R3 R1 K2 ["Size"]
        6 GETUPVAL                         R5 0
        7 GETTABLEKS                       R4 R5 K3 ["createElement"]
        9 GETUPVAL                         R5 1
       10 DUPTABLE                         R6 K7 [{"Size", "Style", "LayoutOrder", "Text", "Expanded"}]
       11 SETTABLEKS                       R3 R6 K2 ["Size"]
       13 LOADK                            R7 K8 ["Section"]
       14 SETTABLEKS                       R7 R6 K4 ["Style"]
       16 SETTABLEKS                       R2 R6 K1 ["LayoutOrder"]
       18 LOADK                            R7 K9 ["Replacement Rules"]
       19 SETTABLEKS                       R7 R6 K5 ["Text"]
       21 LOADB                            R7 1
       22 SETTABLEKS                       R7 R6 K6 ["Expanded"]
       24 DUPTABLE                         R7 K11 [{"ReplaceOptionsPane"}]
       25 GETUPVAL                         R9 0
       26 GETTABLEKS                       R8 R9 K3 ["createElement"]
       28 GETUPVAL                         R9 2
       29 CALL                             R8 1 1
       30 SETTABLEKS                       R8 R7 K10 ["ReplaceOptionsPane"]
       32 CALL                             R4 3 -1
       33 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["R15Migrator"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R4 K8 ["Roact"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R3 R1 K9 ["UI"]
       23 GETTABLEKS                       R4 R3 K10 ["SimpleExpandablePane"]
       25 GETIMPORT                        R5 K5 [require]
       27 GETTABLEKS                       R8 R0 K11 ["Src"]
       29 GETTABLEKS                       R7 R8 K12 ["Components"]
       31 GETTABLEKS                       R6 R7 K13 ["ReplaceOptionsPane"]
       33 CALL                             R5 1 1
       34 GETTABLEKS                       R6 R2 K14 ["PureComponent"]
       36 LOADK                            R8 K15 ["ReplacementRulesExpandablePane"]
       37 NAMECALL                         R6 R6 K16 ["extend"]
       39 CALL                             R6 2 1
       40 DUPCLOSURE                       R7 K17 [PROTO_0]
       41 CAPTURE                          VAL R2
       42 CAPTURE                          VAL R4
       43 CAPTURE                          VAL R5
       44 SETTABLEKS                       R7 R6 K18 ["render"]
       46 RETURN                           R6 1
