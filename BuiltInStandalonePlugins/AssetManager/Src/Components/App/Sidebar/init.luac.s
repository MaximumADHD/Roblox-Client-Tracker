PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["new"]
        3 CALL                             R1 0 1
        4 GETUPVAL                         R2 1
        5 CALL                             R2 0 1
        6 GETUPVAL                         R3 2
        7 CALL                             R3 0 1
        8 NEWTABLE                         R4 4 0
       10 JUMPIFNOT                        R2 ; [+14]
       11 GETUPVAL                         R5 3
       12 GETTABLEKS                       R5 R5 K1 ["createElement"]
       14 GETUPVAL                         R6 4
       15 DUPTABLE                         R7 K3 [{"LayoutOrder"}]
       16 NAMECALL                         R8 R1 K4 ["getNextOrder"]
       18 CALL                             R8 1 1
       19 SETTABLEKS                       R8 R7 K2 ["LayoutOrder"]
       21 CALL                             R5 2 1
       22 SETTABLEKS                       R5 R4 K5 ["ScopeOptions"]
       24 JUMP                             ; [+45]
       25 GETUPVAL                         R5 3
       26 GETTABLEKS                       R5 R5 K1 ["createElement"]
       28 GETUPVAL                         R6 5
       29 DUPTABLE                         R7 K3 [{"LayoutOrder"}]
       30 NAMECALL                         R8 R1 K4 ["getNextOrder"]
       32 CALL                             R8 1 1
       33 SETTABLEKS                       R8 R7 K2 ["LayoutOrder"]
       35 CALL                             R5 2 1
       36 SETTABLEKS                       R5 R4 K6 ["SearchPanel"]
       38 GETTABLEKS                       R6 R3 K7 ["ShowSearchOptions"]
       40 JUMPIFNOT                        R6 ; [+12]
       41 GETUPVAL                         R5 3
       42 GETTABLEKS                       R5 R5 K1 ["createElement"]
       44 GETUPVAL                         R6 6
       45 DUPTABLE                         R7 K3 [{"LayoutOrder"}]
       46 NAMECALL                         R8 R1 K4 ["getNextOrder"]
       48 CALL                             R8 1 1
       49 SETTABLEKS                       R8 R7 K2 ["LayoutOrder"]
       51 CALL                             R5 2 1
       52 JUMP                             ; [+15]
       53 GETUPVAL                         R5 3
       54 GETTABLEKS                       R5 R5 K1 ["createElement"]
       56 GETUPVAL                         R6 7
       57 DUPTABLE                         R7 K9 [{"ExplorerItems", "LayoutOrder"}]
       58 GETTABLEKS                       R8 R0 K8 ["ExplorerItems"]
       60 SETTABLEKS                       R8 R7 K8 ["ExplorerItems"]
       62 NAMECALL                         R8 R1 K4 ["getNextOrder"]
       64 CALL                             R8 1 1
       65 SETTABLEKS                       R8 R7 K2 ["LayoutOrder"]
       67 CALL                             R5 2 1
       68 SETTABLEKS                       R5 R4 K10 ["SidebarContent"]
       70 GETUPVAL                         R5 3
       71 GETTABLEKS                       R5 R5 K1 ["createElement"]
       73 GETUPVAL                         R6 8
       74 GETTABLEKS                       R6 R6 K11 ["View"]
       76 DUPTABLE                         R7 K16 [{["LayoutOrder"], ["tag"] = "col align-y-top size-full", ["testId"] = "sidebar"}]
       77 GETTABLEKS                       R8 R0 K2 ["LayoutOrder"]
       79 SETTABLEKS                       R8 R7 K2 ["LayoutOrder"]
       81 MOVE                             R8 R4
       82 CALL                             R5 3 -1
       83 RETURN                           R5 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetManager"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Types"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Packages"]
       18 GETTABLEKS                       R3 R3 K9 ["React"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K8 ["Packages"]
       25 GETTABLEKS                       R4 R4 K10 ["Framework"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K8 ["Packages"]
       32 GETTABLEKS                       R5 R5 K11 ["Foundation"]
       34 CALL                             R4 1 1
       35 GETTABLEKS                       R5 R3 K12 ["Util"]
       37 GETTABLEKS                       R5 R5 K13 ["LayoutOrderIterator"]
       39 GETIMPORT                        R6 K5 [require]
       41 GETIMPORT                        R7 K1 [script]
       43 GETTABLEKS                       R7 R7 K14 ["ScopeExplorer"]
       45 CALL                             R6 1 1
       46 GETIMPORT                        R7 K5 [require]
       48 GETIMPORT                        R8 K1 [script]
       50 GETTABLEKS                       R8 R8 K15 ["SearchOptions"]
       52 CALL                             R7 1 1
       53 GETIMPORT                        R8 K5 [require]
       55 GETIMPORT                        R9 K1 [script]
       57 GETTABLEKS                       R9 R9 K16 ["SearchPanel"]
       59 CALL                             R8 1 1
       60 GETIMPORT                        R9 K5 [require]
       62 GETIMPORT                        R10 K1 [script]
       64 GETTABLEKS                       R10 R10 K17 ["ScopeOptions"]
       66 CALL                             R9 1 1
       67 GETIMPORT                        R10 K5 [require]
       69 GETTABLEKS                       R11 R0 K6 ["Src"]
       71 GETTABLEKS                       R11 R11 K18 ["Hooks"]
       73 GETTABLEKS                       R11 R11 K19 ["useSearchInfo"]
       75 CALL                             R10 1 1
       76 GETIMPORT                        R11 K5 [require]
       78 GETTABLEKS                       R12 R0 K6 ["Src"]
       80 GETTABLEKS                       R12 R12 K18 ["Hooks"]
       82 GETTABLEKS                       R12 R12 K20 ["useShowScopeOptions"]
       84 CALL                             R11 1 1
       85 DUPCLOSURE                       R12 K21 [PROTO_0]
       86 CAPTURE                          VAL R5
       87 CAPTURE                          VAL R11
       88 CAPTURE                          VAL R10
       89 CAPTURE                          VAL R2
       90 CAPTURE                          VAL R9
       91 CAPTURE                          VAL R8
       92 CAPTURE                          VAL R7
       93 CAPTURE                          VAL R6
       94 CAPTURE                          VAL R4
       95 RETURN                           R12 1
