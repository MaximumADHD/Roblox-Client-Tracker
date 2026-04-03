PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["updateSize"]
        3 GETTABLEKS                       R2 R0 K1 ["AbsoluteSize"]
        5 CALL                             R1 1 0
        6 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["createNextOrder"]
        3 CALL                             R1 0 1
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R2 R3 K1 ["createElement"]
        7 GETUPVAL                         R3 2
        8 DUPTABLE                         R4 K4 [{"tag", "onAbsoluteSizeChanged"}]
        9 LOADK                            R5 K5 ["size-full-full col align-y-top bg-surface-200 search-root"]
       10 SETTABLEKS                       R5 R4 K2 ["tag"]
       12 NEWCLOSURE                       R5 P0
       13 CAPTURE                          VAL R0
       14 SETTABLEKS                       R5 R4 K3 ["onAbsoluteSizeChanged"]
       16 DUPTABLE                         R5 K8 [{"SearchContainer", "InputTree"}]
       17 GETUPVAL                         R7 1
       18 GETTABLEKS                       R6 R7 K1 ["createElement"]
       20 GETUPVAL                         R7 2
       21 DUPTABLE                         R8 K10 [{"LayoutOrder", "tag"}]
       22 MOVE                             R9 R1
       23 CALL                             R9 0 1
       24 SETTABLEKS                       R9 R8 K9 ["LayoutOrder"]
       26 LOADK                            R9 K11 ["size-full-0 auto-y padding-small"]
       27 SETTABLEKS                       R9 R8 K2 ["tag"]
       29 DUPTABLE                         R9 K13 [{"SearchBar"}]
       30 GETUPVAL                         R11 1
       31 GETTABLEKS                       R10 R11 K1 ["createElement"]
       33 GETUPVAL                         R11 3
       34 DUPTABLE                         R12 K15 [{"onSearchActivated"}]
       35 GETTABLEKS                       R13 R0 K14 ["onSearchActivated"]
       37 SETTABLEKS                       R13 R12 K14 ["onSearchActivated"]
       39 CALL                             R10 2 1
       40 SETTABLEKS                       R10 R9 K12 ["SearchBar"]
       42 CALL                             R6 3 1
       43 SETTABLEKS                       R6 R5 K6 ["SearchContainer"]
       45 GETUPVAL                         R7 1
       46 GETTABLEKS                       R6 R7 K1 ["createElement"]
       48 GETUPVAL                         R7 4
       49 DUPTABLE                         R8 K16 [{"LayoutOrder"}]
       50 MOVE                             R9 R1
       51 CALL                             R9 0 1
       52 SETTABLEKS                       R9 R8 K9 ["LayoutOrder"]
       54 CALL                             R6 2 1
       55 SETTABLEKS                       R6 R5 K7 ["InputTree"]
       57 CALL                             R2 3 -1
       58 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["InputActionManager"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R4 K8 ["ReactUtils"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R5 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R5 K9 ["Foundation"]
       27 CALL                             R3 1 1
       28 GETTABLEKS                       R4 R3 K10 ["View"]
       30 GETTABLEKS                       R6 R0 K11 ["Src"]
       32 GETTABLEKS                       R5 R6 K12 ["Components"]
       34 GETIMPORT                        R6 K5 [require]
       36 GETTABLEKS                       R7 R5 K13 ["Tree"]
       38 CALL                             R6 1 1
       39 GETIMPORT                        R7 K5 [require]
       41 GETTABLEKS                       R8 R5 K14 ["Search"]
       43 CALL                             R7 1 1
       44 DUPCLOSURE                       R8 K15 [PROTO_1]
       45 CAPTURE                          VAL R2
       46 CAPTURE                          VAL R1
       47 CAPTURE                          VAL R4
       48 CAPTURE                          VAL R7
       49 CAPTURE                          VAL R6
       50 RETURN                           R8 1
