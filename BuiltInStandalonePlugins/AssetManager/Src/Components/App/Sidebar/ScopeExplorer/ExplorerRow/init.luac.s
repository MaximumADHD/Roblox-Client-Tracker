PROTO_0:
        0 GETTABLEKS                       R2 R0 K0 ["Item"]
        2 GETTABLEKS                       R1 R2 K1 ["ExplorerHeader"]
        4 JUMPIFNOT                        R1 ; [+21]
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R1 R2 K2 ["createElement"]
        8 GETUPVAL                         R2 1
        9 DUPTABLE                         R3 K6 [{"Index", "Text", "Position"}]
       10 GETTABLEKS                       R4 R0 K3 ["Index"]
       12 SETTABLEKS                       R4 R3 K3 ["Index"]
       14 GETTABLEKS                       R5 R0 K0 ["Item"]
       16 GETTABLEKS                       R4 R5 K1 ["ExplorerHeader"]
       18 SETTABLEKS                       R4 R3 K4 ["Text"]
       20 GETTABLEKS                       R4 R0 K5 ["Position"]
       22 SETTABLEKS                       R4 R3 K5 ["Position"]
       24 CALL                             R1 2 -1
       25 RETURN                           R1 -1
       26 GETTABLEKS                       R2 R0 K0 ["Item"]
       28 GETTABLEKS                       R1 R2 K7 ["Scope"]
       30 JUMPIFNOT                        R1 ; [+21]
       31 GETUPVAL                         R2 0
       32 GETTABLEKS                       R1 R2 K2 ["createElement"]
       34 GETUPVAL                         R2 2
       35 DUPTABLE                         R3 K9 [{"Index", "ScopeInfo", "Position"}]
       36 GETTABLEKS                       R4 R0 K3 ["Index"]
       38 SETTABLEKS                       R4 R3 K3 ["Index"]
       40 GETTABLEKS                       R5 R0 K0 ["Item"]
       42 GETTABLEKS                       R4 R5 K7 ["Scope"]
       44 SETTABLEKS                       R4 R3 K8 ["ScopeInfo"]
       46 GETTABLEKS                       R4 R0 K5 ["Position"]
       48 SETTABLEKS                       R4 R3 K5 ["Position"]
       50 CALL                             R1 2 -1
       51 RETURN                           R1 -1
       52 GETUPVAL                         R1 3
       53 LOADK                            R2 K10 ["ExplorerRow: Item does not have a scope"]
       54 CALL                             R1 1 0
       55 GETUPVAL                         R2 0
       56 GETTABLEKS                       R1 R2 K2 ["createElement"]
       58 GETUPVAL                         R2 4
       59 NEWTABLE                         R3 4 0
       61 GETTABLEKS                       R4 R0 K3 ["Index"]
       63 SETTABLEKS                       R4 R3 K11 ["LayoutOrder"]
       65 GETTABLEKS                       R4 R0 K5 ["Position"]
       67 SETTABLEKS                       R4 R3 K5 ["Position"]
       69 GETUPVAL                         R5 0
       70 GETTABLEKS                       R4 R5 K12 ["Tag"]
       72 LOADK                            R5 K13 ["am-size-full-explorerrow"]
       73 SETTABLE                         R5 R3 R4
       74 CALL                             R1 2 -1
       75 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetManager"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R4 K8 ["Framework"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R5 R0 K9 ["Src"]
       25 GETTABLEKS                       R4 R5 K10 ["Types"]
       27 CALL                             R3 1 1
       28 GETTABLEKS                       R4 R2 K11 ["UI"]
       30 GETTABLEKS                       R5 R4 K12 ["Pane"]
       32 GETIMPORT                        R6 K5 [require]
       34 GETIMPORT                        R8 K1 [script]
       36 GETTABLEKS                       R7 R8 K13 ["HeaderRow_DEPRECATED"]
       38 CALL                             R6 1 1
       39 GETIMPORT                        R7 K5 [require]
       41 GETIMPORT                        R9 K1 [script]
       43 GETTABLEKS                       R8 R9 K14 ["ScopeRow_DEPRECATED"]
       45 CALL                             R7 1 1
       46 GETIMPORT                        R8 K5 [require]
       48 GETTABLEKS                       R11 R0 K9 ["Src"]
       50 GETTABLEKS                       R10 R11 K15 ["Hooks"]
       52 GETTABLEKS                       R9 R10 K16 ["useExplorerInfo"]
       54 CALL                             R8 1 1
       55 GETIMPORT                        R9 K5 [require]
       57 GETTABLEKS                       R12 R0 K9 ["Src"]
       59 GETTABLEKS                       R11 R12 K17 ["Util"]
       61 GETTABLEKS                       R10 R11 K18 ["logIfDebug"]
       63 CALL                             R9 1 1
       64 DUPCLOSURE                       R10 K19 [PROTO_0]
       65 CAPTURE                          VAL R1
       66 CAPTURE                          VAL R6
       67 CAPTURE                          VAL R7
       68 CAPTURE                          VAL R9
       69 CAPTURE                          VAL R5
       70 RETURN                           R10 1
