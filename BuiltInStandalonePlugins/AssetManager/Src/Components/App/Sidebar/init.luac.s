PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["new"]
        3 CALL                             R1 0 1
        4 GETUPVAL                         R2 1
        5 CALL                             R2 0 1
        6 GETUPVAL                         R3 2
        7 CALL                             R3 0 1
        8 NEWTABLE                         R4 4 0
       10 JUMPIFNOT                        R2 ; [+14]
       11 GETUPVAL                         R6 3
       12 GETTABLEKS                       R5 R6 K1 ["createElement"]
       14 GETUPVAL                         R6 4
       15 DUPTABLE                         R7 K3 [{"LayoutOrder"}]
       16 NAMECALL                         R8 R1 K4 ["getNextOrder"]
       18 CALL                             R8 1 1
       19 SETTABLEKS                       R8 R7 K2 ["LayoutOrder"]
       21 CALL                             R5 2 1
       22 SETTABLEKS                       R5 R4 K5 ["ScopeOptions"]
       24 JUMP                             ; [+45]
       25 GETUPVAL                         R6 3
       26 GETTABLEKS                       R5 R6 K1 ["createElement"]
       28 GETUPVAL                         R6 5
       29 DUPTABLE                         R7 K3 [{"LayoutOrder"}]
       30 NAMECALL                         R8 R1 K4 ["getNextOrder"]
       32 CALL                             R8 1 1
       33 SETTABLEKS                       R8 R7 K2 ["LayoutOrder"]
       35 CALL                             R5 2 1
       36 SETTABLEKS                       R5 R4 K6 ["SearchPanel"]
       38 GETTABLEKS                       R6 R3 K7 ["ShowSearchOptions"]
       40 JUMPIFNOT                        R6 ; [+12]
       41 GETUPVAL                         R6 3
       42 GETTABLEKS                       R5 R6 K1 ["createElement"]
       44 GETUPVAL                         R6 6
       45 DUPTABLE                         R7 K3 [{"LayoutOrder"}]
       46 NAMECALL                         R8 R1 K4 ["getNextOrder"]
       48 CALL                             R8 1 1
       49 SETTABLEKS                       R8 R7 K2 ["LayoutOrder"]
       51 CALL                             R5 2 1
       52 JUMP                             ; [+15]
       53 GETUPVAL                         R6 3
       54 GETTABLEKS                       R5 R6 K1 ["createElement"]
       56 GETUPVAL                         R6 7
       57 DUPTABLE                         R7 K9 [{"ExplorerItems", "LayoutOrder"}]
       58 GETTABLEKS                       R8 R0 K8 ["ExplorerItems"]
       60 SETTABLEKS                       R8 R7 K8 ["ExplorerItems"]
       62 NAMECALL                         R8 R1 K4 ["getNextOrder"]
       64 CALL                             R8 1 1
       65 SETTABLEKS                       R8 R7 K2 ["LayoutOrder"]
       67 CALL                             R5 2 1
       68 SETTABLEKS                       R5 R4 K10 ["SidebarContent"]
       70 GETUPVAL                         R6 3
       71 GETTABLEKS                       R5 R6 K1 ["createElement"]
       73 GETUPVAL                         R6 8
       74 NEWTABLE                         R7 2 0
       76 GETTABLEKS                       R8 R0 K2 ["LayoutOrder"]
       78 SETTABLEKS                       R8 R7 K2 ["LayoutOrder"]
       80 GETUPVAL                         R9 3
       81 GETTABLEKS                       R8 R9 K11 ["Tag"]
       83 LOADK                            R9 K12 ["X-Top X-Column data-testid=sidebar"]
       84 SETTABLE                         R9 R7 R8
       85 MOVE                             R8 R4
       86 CALL                             R5 3 -1
       87 RETURN                           R5 -1

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
       21 GETTABLEKS                       R3 R2 K9 ["UI"]
       23 GETTABLEKS                       R4 R3 K10 ["Pane"]
       25 GETIMPORT                        R5 K5 [require]
       27 GETIMPORT                        R7 K1 [script]
       29 GETTABLEKS                       R6 R7 K11 ["ScopeExplorer"]
       31 CALL                             R5 1 1
       32 GETIMPORT                        R6 K5 [require]
       34 GETIMPORT                        R8 K1 [script]
       36 GETTABLEKS                       R7 R8 K12 ["SearchOptions"]
       38 CALL                             R6 1 1
       39 GETIMPORT                        R7 K5 [require]
       41 GETIMPORT                        R9 K1 [script]
       43 GETTABLEKS                       R8 R9 K13 ["SearchPanel"]
       45 CALL                             R7 1 1
       46 GETIMPORT                        R8 K5 [require]
       48 GETIMPORT                        R10 K1 [script]
       50 GETTABLEKS                       R9 R10 K14 ["ScopeOptions"]
       52 CALL                             R8 1 1
       53 GETIMPORT                        R9 K5 [require]
       55 GETTABLEKS                       R12 R0 K15 ["Src"]
       57 GETTABLEKS                       R11 R12 K16 ["Hooks"]
       59 GETTABLEKS                       R10 R11 K17 ["useSearchInfo"]
       61 CALL                             R9 1 1
       62 GETIMPORT                        R10 K5 [require]
       64 GETTABLEKS                       R13 R0 K15 ["Src"]
       66 GETTABLEKS                       R12 R13 K16 ["Hooks"]
       68 GETTABLEKS                       R11 R12 K18 ["useShowScopeOptions"]
       70 CALL                             R10 1 1
       71 GETTABLEKS                       R12 R2 K19 ["Util"]
       73 GETTABLEKS                       R11 R12 K20 ["LayoutOrderIterator"]
       75 DUPCLOSURE                       R12 K21 [PROTO_0]
       76 CAPTURE                          VAL R11
       77 CAPTURE                          VAL R10
       78 CAPTURE                          VAL R9
       79 CAPTURE                          VAL R1
       80 CAPTURE                          VAL R8
       81 CAPTURE                          VAL R7
       82 CAPTURE                          VAL R6
       83 CAPTURE                          VAL R5
       84 CAPTURE                          VAL R4
       85 RETURN                           R12 1
