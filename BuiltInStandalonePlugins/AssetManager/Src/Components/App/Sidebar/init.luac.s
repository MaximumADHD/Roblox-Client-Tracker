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
       70 GETUPVAL                         R5 8
       71 CALL                             R5 0 1
       72 JUMPIFNOT                        R5 ; [+17]
       73 GETUPVAL                         R5 3
       74 GETTABLEKS                       R5 R5 K1 ["createElement"]
       76 GETUPVAL                         R6 9
       77 GETTABLEKS                       R6 R6 K11 ["View"]
       79 DUPTABLE                         R7 K13 [{"LayoutOrder", "tag"}]
       80 GETTABLEKS                       R8 R0 K2 ["LayoutOrder"]
       82 SETTABLEKS                       R8 R7 K2 ["LayoutOrder"]
       84 LOADK                            R8 K14 ["size-full col align-y-top data-testid=sidebar"]
       85 SETTABLEKS                       R8 R7 K12 ["tag"]
       87 MOVE                             R8 R4
       88 CALL                             R5 3 -1
       89 RETURN                           R5 -1
       90 GETUPVAL                         R5 3
       91 GETTABLEKS                       R5 R5 K1 ["createElement"]
       93 GETUPVAL                         R6 10
       94 NEWTABLE                         R7 2 0
       96 GETTABLEKS                       R8 R0 K2 ["LayoutOrder"]
       98 SETTABLEKS                       R8 R7 K2 ["LayoutOrder"]
      100 GETUPVAL                         R8 3
      101 GETTABLEKS                       R8 R8 K15 ["Tag"]
      103 LOADK                            R9 K16 ["X-Top X-Column data-testid=sidebar"]
      104 SETTABLE                         R9 R7 R8
      105 MOVE                             R8 R4
      106 CALL                             R5 3 -1
      107 RETURN                           R5 -1

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
       32 GETTABLEKS                       R5 R2 K12 ["UI"]
       34 GETTABLEKS                       R6 R5 K13 ["Pane"]
       36 GETIMPORT                        R7 K5 [require]
       38 GETIMPORT                        R8 K1 [script]
       40 GETTABLEKS                       R8 R8 K14 ["ScopeExplorer"]
       42 CALL                             R7 1 1
       43 GETIMPORT                        R8 K5 [require]
       45 GETIMPORT                        R9 K1 [script]
       47 GETTABLEKS                       R9 R9 K15 ["SearchOptions"]
       49 CALL                             R8 1 1
       50 GETIMPORT                        R9 K5 [require]
       52 GETIMPORT                        R10 K1 [script]
       54 GETTABLEKS                       R10 R10 K16 ["SearchPanel"]
       56 CALL                             R9 1 1
       57 GETIMPORT                        R10 K5 [require]
       59 GETIMPORT                        R11 K1 [script]
       61 GETTABLEKS                       R11 R11 K17 ["ScopeOptions"]
       63 CALL                             R10 1 1
       64 GETIMPORT                        R11 K5 [require]
       66 GETTABLEKS                       R12 R0 K18 ["Src"]
       68 GETTABLEKS                       R12 R12 K19 ["Hooks"]
       70 GETTABLEKS                       R12 R12 K20 ["useSearchInfo"]
       72 CALL                             R11 1 1
       73 GETIMPORT                        R12 K5 [require]
       75 GETTABLEKS                       R13 R0 K18 ["Src"]
       77 GETTABLEKS                       R13 R13 K19 ["Hooks"]
       79 GETTABLEKS                       R13 R13 K21 ["useShowScopeOptions"]
       81 CALL                             R12 1 1
       82 GETIMPORT                        R13 K5 [require]
       84 GETTABLEKS                       R14 R0 K18 ["Src"]
       86 GETTABLEKS                       R14 R14 K22 ["Flags"]
       88 GETTABLEKS                       R14 R14 K23 ["getFFlagAmrFoundationifyBrowser"]
       90 CALL                             R13 1 1
       91 DUPCLOSURE                       R14 K24 [PROTO_0]
       92 CAPTURE                          VAL R4
       93 CAPTURE                          VAL R12
       94 CAPTURE                          VAL R11
       95 CAPTURE                          VAL R1
       96 CAPTURE                          VAL R10
       97 CAPTURE                          VAL R9
       98 CAPTURE                          VAL R8
       99 CAPTURE                          VAL R7
      100 CAPTURE                          VAL R13
      101 CAPTURE                          VAL R3
      102 CAPTURE                          VAL R6
      103 RETURN                           R14 1
