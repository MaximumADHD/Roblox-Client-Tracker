PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["onSizeChanged"]
        3 JUMPIFNOT                        R1 ; [+6]
        4 GETUPVAL                         R2 0
        5 GETTABLEKS                       R1 R2 K0 ["onSizeChanged"]
        7 GETTABLEKS                       R2 R0 K1 ["AbsoluteSize"]
        9 CALL                             R1 1 0
       10 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["useContext"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R2 R3 K1 ["Context"]
        6 CALL                             R1 1 1
        7 GETUPVAL                         R3 2
        8 GETTABLEKS                       R2 R3 K2 ["useEventCallback"]
       10 NEWCLOSURE                       R3 P0
       11 CAPTURE                          VAL R1
       12 CALL                             R2 1 1
       13 GETUPVAL                         R4 2
       14 GETTABLEKS                       R3 R4 K3 ["createNextOrder"]
       16 CALL                             R3 0 1
       17 GETUPVAL                         R5 0
       18 GETTABLEKS                       R4 R5 K4 ["createElement"]
       20 GETUPVAL                         R5 3
       21 DUPTABLE                         R6 K7 [{"tag", "onAbsoluteSizeChanged"}]
       22 LOADK                            R7 K8 ["size-full-full col align-y-top bg-surface-200 search-root"]
       23 SETTABLEKS                       R7 R6 K5 ["tag"]
       25 SETTABLEKS                       R2 R6 K6 ["onAbsoluteSizeChanged"]
       27 DUPTABLE                         R7 K11 [{"SearchContainer", "InputTree"}]
       28 GETUPVAL                         R9 0
       29 GETTABLEKS                       R8 R9 K4 ["createElement"]
       31 GETUPVAL                         R9 3
       32 DUPTABLE                         R10 K13 [{"LayoutOrder", "tag"}]
       33 MOVE                             R11 R3
       34 CALL                             R11 0 1
       35 SETTABLEKS                       R11 R10 K12 ["LayoutOrder"]
       37 LOADK                            R11 K14 ["size-full-0 auto-y padding-small"]
       38 SETTABLEKS                       R11 R10 K5 ["tag"]
       40 DUPTABLE                         R11 K16 [{"SearchBar"}]
       41 GETUPVAL                         R13 0
       42 GETTABLEKS                       R12 R13 K4 ["createElement"]
       44 GETUPVAL                         R13 4
       45 DUPTABLE                         R14 K18 [{"onSearchActivated"}]
       46 GETTABLEKS                       R15 R0 K17 ["onSearchActivated"]
       48 SETTABLEKS                       R15 R14 K17 ["onSearchActivated"]
       50 CALL                             R12 2 1
       51 SETTABLEKS                       R12 R11 K15 ["SearchBar"]
       53 CALL                             R8 3 1
       54 SETTABLEKS                       R8 R7 K9 ["SearchContainer"]
       56 GETUPVAL                         R9 0
       57 GETTABLEKS                       R8 R9 K4 ["createElement"]
       59 GETUPVAL                         R9 5
       60 DUPTABLE                         R10 K19 [{"LayoutOrder"}]
       61 MOVE                             R11 R3
       62 CALL                             R11 0 1
       63 SETTABLEKS                       R11 R10 K12 ["LayoutOrder"]
       65 CALL                             R8 2 1
       66 SETTABLEKS                       R8 R7 K10 ["InputTree"]
       68 CALL                             R4 3 -1
       69 RETURN                           R4 -1

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
       44 GETTABLEKS                       R9 R0 K11 ["Src"]
       46 GETTABLEKS                       R8 R9 K15 ["Contexts"]
       48 GETIMPORT                        R9 K5 [require]
       50 GETTABLEKS                       R10 R8 K16 ["PluginConfiguration"]
       52 CALL                             R9 1 1
       53 DUPCLOSURE                       R10 K17 [PROTO_1]
       54 CAPTURE                          VAL R1
       55 CAPTURE                          VAL R9
       56 CAPTURE                          VAL R2
       57 CAPTURE                          VAL R4
       58 CAPTURE                          VAL R7
       59 CAPTURE                          VAL R6
       60 RETURN                           R10 1
