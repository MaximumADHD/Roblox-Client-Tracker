PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["LayoutOrder"]
        4 GETTABLEKS                       R3 R1 K2 ["Size"]
        6 GETUPVAL                         R4 0
        7 GETTABLEKS                       R4 R4 K3 ["createElement"]
        9 GETUPVAL                         R5 1
       10 DUPTABLE                         R6 K10 [{["Size"], ["Style"] = "Section", ["LayoutOrder"], ["Text"] = "Replacement Rules", ["Expanded"] = True}]
       11 SETTABLEKS                       R3 R6 K2 ["Size"]
       13 SETTABLEKS                       R2 R6 K1 ["LayoutOrder"]
       15 DUPTABLE                         R7 K12 [{"ReplaceOptionsPane"}]
       16 GETUPVAL                         R8 0
       17 GETTABLEKS                       R8 R8 K3 ["createElement"]
       19 GETUPVAL                         R9 2
       20 CALL                             R8 1 1
       21 SETTABLEKS                       R8 R7 K11 ["ReplaceOptionsPane"]
       23 CALL                             R4 3 -1
       24 RETURN                           R4 -1

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
       23 GETTABLEKS                       R4 R3 K10 ["SimpleExpandablePane"]
       25 GETIMPORT                        R5 K5 [require]
       27 GETTABLEKS                       R6 R0 K11 ["Src"]
       29 GETTABLEKS                       R6 R6 K12 ["Components"]
       31 GETTABLEKS                       R6 R6 K13 ["ReplaceOptionsPane"]
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
