PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createNextOrder"]
        3 CALL                             R1 0 1
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K1 ["createElement"]
        7 GETUPVAL                         R3 2
        8 DUPTABLE                         R4 K5 [{["tag"] = "tree-row row align-y-center", ["LayoutOrder"]}]
        9 GETTABLEKS                       R5 R0 K4 ["LayoutOrder"]
       11 SETTABLEKS                       R5 R4 K4 ["LayoutOrder"]
       13 DUPTABLE                         R5 K8 [{"Node", "Divider"}]
       14 GETUPVAL                         R6 1
       15 GETTABLEKS                       R6 R6 K1 ["createElement"]
       17 GETUPVAL                         R7 3
       18 GETTABLEKS                       R8 R0 K9 ["nodeProps"]
       20 CALL                             R6 2 1
       21 SETTABLEKS                       R6 R5 K6 ["Node"]
       23 GETUPVAL                         R6 1
       24 GETTABLEKS                       R6 R6 K1 ["createElement"]
       26 GETUPVAL                         R7 4
       27 DUPTABLE                         R8 K12 [{["LayoutOrder"], ["orientation"], ["tag"] = "auto-y"}]
       28 MOVE                             R9 R1
       29 CALL                             R9 0 1
       30 SETTABLEKS                       R9 R8 K4 ["LayoutOrder"]
       32 GETUPVAL                         R9 5
       33 GETTABLEKS                       R9 R9 K13 ["Vertical"]
       35 SETTABLEKS                       R9 R8 K10 ["orientation"]
       37 CALL                             R6 2 1
       38 SETTABLEKS                       R6 R5 K7 ["Divider"]
       40 CALL                             R2 3 -1
       41 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["InputActionManager"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["ReactUtils"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R4 K9 ["Foundation"]
       27 CALL                             R3 1 1
       28 GETTABLEKS                       R4 R3 K10 ["Divider"]
       30 GETTABLEKS                       R5 R3 K11 ["Enums"]
       32 GETTABLEKS                       R5 R5 K12 ["Orientation"]
       34 GETTABLEKS                       R6 R3 K13 ["View"]
       36 GETIMPORT                        R7 K5 [require]
       38 GETTABLEKS                       R8 R0 K14 ["Src"]
       40 GETTABLEKS                       R8 R8 K15 ["Components"]
       42 GETTABLEKS                       R8 R8 K16 ["Tree"]
       44 GETTABLEKS                       R8 R8 K17 ["Node"]
       46 CALL                             R7 1 1
       47 DUPCLOSURE                       R8 K18 [PROTO_0]
       48 CAPTURE                          VAL R2
       49 CAPTURE                          VAL R1
       50 CAPTURE                          VAL R6
       51 CAPTURE                          VAL R7
       52 CAPTURE                          VAL R4
       53 CAPTURE                          VAL R5
       54 RETURN                           R8 1
