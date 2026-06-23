PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createNextOrder"]
        3 CALL                             R1 0 1
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K1 ["createElement"]
        7 GETUPVAL                         R3 2
        8 DUPTABLE                         R4 K4 [{"LayoutOrder", "tag"}]
        9 GETTABLEKS                       R5 R0 K2 ["LayoutOrder"]
       11 SETTABLEKS                       R5 R4 K2 ["LayoutOrder"]
       13 LOADK                            R5 K5 ["size-0-full columns-input align-y-center col"]
       14 SETTABLEKS                       R5 R4 K3 ["tag"]
       16 DUPTABLE                         R5 K8 [{"Container", "Divider"}]
       17 GETUPVAL                         R6 1
       18 GETTABLEKS                       R6 R6 K1 ["createElement"]
       20 GETUPVAL                         R7 2
       21 DUPTABLE                         R8 K4 [{"LayoutOrder", "tag"}]
       22 MOVE                             R9 R1
       23 CALL                             R9 0 1
       24 SETTABLEKS                       R9 R8 K2 ["LayoutOrder"]
       26 LOADK                            R9 K9 ["size-0-full"]
       27 SETTABLEKS                       R9 R8 K3 ["tag"]
       29 CALL                             R6 2 1
       30 SETTABLEKS                       R6 R5 K6 ["Container"]
       32 GETUPVAL                         R6 1
       33 GETTABLEKS                       R6 R6 K1 ["createElement"]
       35 GETUPVAL                         R7 3
       36 DUPTABLE                         R8 K11 [{"LayoutOrder", "orientation", "tag"}]
       37 MOVE                             R9 R1
       38 CALL                             R9 0 1
       39 SETTABLEKS                       R9 R8 K2 ["LayoutOrder"]
       41 GETUPVAL                         R9 4
       42 GETTABLEKS                       R9 R9 K12 ["Horizontal"]
       44 SETTABLEKS                       R9 R8 K10 ["orientation"]
       46 LOADK                            R9 K13 ["auto-x"]
       47 SETTABLEKS                       R9 R8 K3 ["tag"]
       49 CALL                             R6 2 1
       50 SETTABLEKS                       R6 R5 K7 ["Divider"]
       52 CALL                             R2 3 -1
       53 RETURN                           R2 -1

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
       28 GETTABLEKS                       R4 R3 K10 ["View"]
       30 GETTABLEKS                       R5 R3 K11 ["Divider"]
       32 GETTABLEKS                       R6 R3 K12 ["Enums"]
       34 GETTABLEKS                       R6 R6 K13 ["Orientation"]
       36 DUPCLOSURE                       R7 K14 [PROTO_0]
       37 CAPTURE                          VAL R2
       38 CAPTURE                          VAL R1
       39 CAPTURE                          VAL R4
       40 CAPTURE                          VAL R5
       41 CAPTURE                          VAL R6
       42 RETURN                           R7 1
