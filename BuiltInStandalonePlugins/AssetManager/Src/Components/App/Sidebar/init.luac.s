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
       76 DUPTABLE                         R7 K13 [{"LayoutOrder", "tag"}]
       77 GETTABLEKS                       R8 R0 K2 ["LayoutOrder"]
       79 SETTABLEKS                       R8 R7 K2 ["LayoutOrder"]
       81 LOADK                            R8 K14 ["size-full col align-y-top data-testid=sidebar"]
       82 SETTABLEKS                       R8 R7 K12 ["tag"]
       84 MOVE                             R8 R4
       85 CALL                             R5 3 -1
       86 RETURN                           R5 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetManager"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["Framework"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R4 K9 ["Foundation"]
       27 CALL                             R3 1 1
       28 GETTABLEKS                       R4 R2 K10 ["Util"]
       30 GETTABLEKS                       R4 R4 K11 ["LayoutOrderIterator"]
       32 GETIMPORT                        R5 K5 [require]
       34 GETIMPORT                        R6 K1 [script]
       36 GETTABLEKS                       R6 R6 K12 ["ScopeExplorer"]
       38 CALL                             R5 1 1
       39 GETIMPORT                        R6 K5 [require]
       41 GETIMPORT                        R7 K1 [script]
       43 GETTABLEKS                       R7 R7 K13 ["SearchOptions"]
       45 CALL                             R6 1 1
       46 GETIMPORT                        R7 K5 [require]
       48 GETIMPORT                        R8 K1 [script]
       50 GETTABLEKS                       R8 R8 K14 ["SearchPanel"]
       52 CALL                             R7 1 1
       53 GETIMPORT                        R8 K5 [require]
       55 GETIMPORT                        R9 K1 [script]
       57 GETTABLEKS                       R9 R9 K15 ["ScopeOptions"]
       59 CALL                             R8 1 1
       60 GETIMPORT                        R9 K5 [require]
       62 GETTABLEKS                       R10 R0 K16 ["Src"]
       64 GETTABLEKS                       R10 R10 K17 ["Hooks"]
       66 GETTABLEKS                       R10 R10 K18 ["useSearchInfo"]
       68 CALL                             R9 1 1
       69 GETIMPORT                        R10 K5 [require]
       71 GETTABLEKS                       R11 R0 K16 ["Src"]
       73 GETTABLEKS                       R11 R11 K17 ["Hooks"]
       75 GETTABLEKS                       R11 R11 K19 ["useShowScopeOptions"]
       77 CALL                             R10 1 1
       78 DUPCLOSURE                       R11 K20 [PROTO_0]
       79 CAPTURE                          VAL R4
       80 CAPTURE                          VAL R10
       81 CAPTURE                          VAL R9
       82 CAPTURE                          VAL R1
       83 CAPTURE                          VAL R8
       84 CAPTURE                          VAL R7
       85 CAPTURE                          VAL R6
       86 CAPTURE                          VAL R5
       87 CAPTURE                          VAL R3
       88 RETURN                           R11 1
