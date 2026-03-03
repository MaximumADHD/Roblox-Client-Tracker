PROTO_0:
        0 GETIMPORT                        R1 K1 [print]
        2 LOADK                            R3 K2 ["Searching For: "]
        3 MOVE                             R4 R0
        4 CONCAT                           R2 R3 R4
        5 CALL                             R1 1 0
        6 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["updateSize"]
        3 GETTABLEKS                       R2 R0 K1 ["AbsoluteSize"]
        5 CALL                             R1 1 0
        6 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["createNextOrder"]
        3 CALL                             R1 0 1
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R2 R3 K1 ["useCallback"]
        7 DUPCLOSURE                       R3 K2 [PROTO_0]
        8 NEWTABLE                         R4 0 0
       10 CALL                             R2 2 1
       11 GETUPVAL                         R4 1
       12 GETTABLEKS                       R3 R4 K3 ["createElement"]
       14 GETUPVAL                         R4 2
       15 DUPTABLE                         R5 K6 [{"tag", "onAbsoluteSizeChanged"}]
       16 LOADK                            R6 K7 ["size-full-full col align-y-top bg-surface-200 search-root"]
       17 SETTABLEKS                       R6 R5 K4 ["tag"]
       19 NEWCLOSURE                       R6 P1
       20 CAPTURE                          VAL R0
       21 SETTABLEKS                       R6 R5 K5 ["onAbsoluteSizeChanged"]
       23 DUPTABLE                         R6 K10 [{"SearchContainer", "InputTree"}]
       24 GETUPVAL                         R8 1
       25 GETTABLEKS                       R7 R8 K3 ["createElement"]
       27 GETUPVAL                         R8 2
       28 DUPTABLE                         R9 K12 [{"LayoutOrder", "tag"}]
       29 MOVE                             R10 R1
       30 CALL                             R10 0 1
       31 SETTABLEKS                       R10 R9 K11 ["LayoutOrder"]
       33 LOADK                            R10 K13 ["size-full-0 auto-y padding-medium"]
       34 SETTABLEKS                       R10 R9 K4 ["tag"]
       36 DUPTABLE                         R10 K15 [{"SearchBar"}]
       37 GETUPVAL                         R12 1
       38 GETTABLEKS                       R11 R12 K3 ["createElement"]
       40 GETUPVAL                         R12 3
       41 DUPTABLE                         R13 K17 [{"onSearchActivated"}]
       42 SETTABLEKS                       R2 R13 K16 ["onSearchActivated"]
       44 CALL                             R11 2 1
       45 SETTABLEKS                       R11 R10 K14 ["SearchBar"]
       47 CALL                             R7 3 1
       48 SETTABLEKS                       R7 R6 K8 ["SearchContainer"]
       50 GETUPVAL                         R8 1
       51 GETTABLEKS                       R7 R8 K3 ["createElement"]
       53 GETUPVAL                         R8 4
       54 DUPTABLE                         R9 K18 [{"LayoutOrder"}]
       55 MOVE                             R10 R1
       56 CALL                             R10 0 1
       57 SETTABLEKS                       R10 R9 K11 ["LayoutOrder"]
       59 CALL                             R7 2 1
       60 SETTABLEKS                       R7 R6 K9 ["InputTree"]
       62 CALL                             R3 3 -1
       63 RETURN                           R3 -1

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
       44 DUPCLOSURE                       R8 K15 [PROTO_2]
       45 CAPTURE                          VAL R2
       46 CAPTURE                          VAL R1
       47 CAPTURE                          VAL R4
       48 CAPTURE                          VAL R7
       49 CAPTURE                          VAL R6
       50 RETURN                           R8 1
