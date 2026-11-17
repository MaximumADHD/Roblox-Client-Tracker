PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["new"]
        3 CALL                             R1 0 1
        4 GETUPVAL                         R2 1
        5 CALL                             R2 0 1
        6 GETUPVAL                         R3 2
        7 CALL                             R3 0 1
        8 GETUPVAL                         R5 3
        9 GETUPVAL                         R6 4
       10 GETTABLEKS                       R6 R6 K1 ["IxpVariable"]
       12 GETTABLEKS                       R6 R6 K2 ["Omnisearch"]
       14 CALL                             R5 1 1
       15 GETUPVAL                         R6 4
       16 GETTABLEKS                       R6 R6 K3 ["IxpValue"]
       18 GETTABLEKS                       R6 R6 K4 ["Experiment"]
       20 JUMPIFEQ                         R5 R6 ; [+2]
       22 LOADB                            R4 0 +1
       23 LOADB                            R4 1
       24 NEWTABLE                         R5 4 0
       26 JUMPIFNOT                        R2 ; [+14]
       27 GETUPVAL                         R6 5
       28 GETTABLEKS                       R6 R6 K5 ["createElement"]
       30 GETUPVAL                         R7 6
       31 DUPTABLE                         R8 K7 [{"LayoutOrder"}]
       32 NAMECALL                         R9 R1 K8 ["getNextOrder"]
       34 CALL                             R9 1 1
       35 SETTABLEKS                       R9 R8 K6 ["LayoutOrder"]
       37 CALL                             R6 2 1
       38 SETTABLEKS                       R6 R5 K9 ["ScopeOptions"]
       40 JUMP                             ; [+46]
       41 GETUPVAL                         R6 5
       42 GETTABLEKS                       R6 R6 K5 ["createElement"]
       44 GETUPVAL                         R7 7
       45 DUPTABLE                         R8 K7 [{"LayoutOrder"}]
       46 NAMECALL                         R9 R1 K8 ["getNextOrder"]
       48 CALL                             R9 1 1
       49 SETTABLEKS                       R9 R8 K6 ["LayoutOrder"]
       51 CALL                             R6 2 1
       52 SETTABLEKS                       R6 R5 K10 ["SearchPanel"]
       54 GETTABLEKS                       R7 R3 K11 ["IsSearchInitiated"]
       56 JUMPIFNOT                        R7 ; [+13]
       57 JUMPIF                           R4 ; [+12]
       58 GETUPVAL                         R6 5
       59 GETTABLEKS                       R6 R6 K5 ["createElement"]
       61 GETUPVAL                         R7 8
       62 DUPTABLE                         R8 K7 [{"LayoutOrder"}]
       63 NAMECALL                         R9 R1 K8 ["getNextOrder"]
       65 CALL                             R9 1 1
       66 SETTABLEKS                       R9 R8 K6 ["LayoutOrder"]
       68 CALL                             R6 2 1
       69 JUMP                             ; [+15]
       70 GETUPVAL                         R6 5
       71 GETTABLEKS                       R6 R6 K5 ["createElement"]
       73 GETUPVAL                         R7 9
       74 DUPTABLE                         R8 K13 [{"ExplorerItems", "LayoutOrder"}]
       75 GETTABLEKS                       R9 R0 K12 ["ExplorerItems"]
       77 SETTABLEKS                       R9 R8 K12 ["ExplorerItems"]
       79 NAMECALL                         R9 R1 K8 ["getNextOrder"]
       81 CALL                             R9 1 1
       82 SETTABLEKS                       R9 R8 K6 ["LayoutOrder"]
       84 CALL                             R6 2 1
       85 SETTABLEKS                       R6 R5 K14 ["SidebarContent"]
       87 GETUPVAL                         R6 5
       88 GETTABLEKS                       R6 R6 K5 ["createElement"]
       90 GETUPVAL                         R7 10
       91 GETTABLEKS                       R7 R7 K15 ["View"]
       93 DUPTABLE                         R8 K20 [{["LayoutOrder"], ["tag"] = "col align-y-top size-full", ["testId"] = "sidebar"}]
       94 GETTABLEKS                       R9 R0 K6 ["LayoutOrder"]
       96 SETTABLEKS                       R9 R8 K6 ["LayoutOrder"]
       98 MOVE                             R9 R5
       99 CALL                             R6 3 -1
      100 RETURN                           R6 -1

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
       73 GETTABLEKS                       R11 R11 K19 ["useIxpValue"]
       75 CALL                             R10 1 1
       76 GETIMPORT                        R11 K5 [require]
       78 GETTABLEKS                       R12 R0 K6 ["Src"]
       80 GETTABLEKS                       R12 R12 K18 ["Hooks"]
       82 GETTABLEKS                       R12 R12 K20 ["useSearchInfo"]
       84 CALL                             R11 1 1
       85 GETIMPORT                        R12 K5 [require]
       87 GETTABLEKS                       R13 R0 K6 ["Src"]
       89 GETTABLEKS                       R13 R13 K18 ["Hooks"]
       91 GETTABLEKS                       R13 R13 K21 ["useShowScopeOptions"]
       93 CALL                             R12 1 1
       94 DUPCLOSURE                       R13 K22 [PROTO_0]
       95 CAPTURE                          VAL R5
       96 CAPTURE                          VAL R12
       97 CAPTURE                          VAL R11
       98 CAPTURE                          VAL R10
       99 CAPTURE                          VAL R1
      100 CAPTURE                          VAL R2
      101 CAPTURE                          VAL R9
      102 CAPTURE                          VAL R8
      103 CAPTURE                          VAL R7
      104 CAPTURE                          VAL R6
      105 CAPTURE                          VAL R4
      106 RETURN                           R13 1
