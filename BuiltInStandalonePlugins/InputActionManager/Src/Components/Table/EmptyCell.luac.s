PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createNextOrder"]
        3 CALL                             R1 0 1
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K1 ["createElement"]
        7 GETUPVAL                         R3 2
        8 DUPTABLE                         R4 K5 [{["LayoutOrder"], ["tag"] = "columns-input col align-y-center size-0-full"}]
        9 GETTABLEKS                       R5 R0 K2 ["LayoutOrder"]
       11 SETTABLEKS                       R5 R4 K2 ["LayoutOrder"]
       13 DUPTABLE                         R5 K8 [{"Container", "Divider"}]
       14 GETUPVAL                         R6 1
       15 GETTABLEKS                       R6 R6 K1 ["createElement"]
       17 GETUPVAL                         R7 2
       18 DUPTABLE                         R8 K10 [{["LayoutOrder"], ["tag"] = "size-0-full"}]
       19 MOVE                             R9 R1
       20 CALL                             R9 0 1
       21 SETTABLEKS                       R9 R8 K2 ["LayoutOrder"]
       23 CALL                             R6 2 1
       24 SETTABLEKS                       R6 R5 K6 ["Container"]
       26 GETUPVAL                         R6 1
       27 GETTABLEKS                       R6 R6 K1 ["createElement"]
       29 GETUPVAL                         R7 3
       30 DUPTABLE                         R8 K13 [{["LayoutOrder"], ["orientation"], ["tag"] = "auto-x"}]
       31 MOVE                             R9 R1
       32 CALL                             R9 0 1
       33 SETTABLEKS                       R9 R8 K2 ["LayoutOrder"]
       35 GETUPVAL                         R9 4
       36 GETTABLEKS                       R9 R9 K14 ["Horizontal"]
       38 SETTABLEKS                       R9 R8 K11 ["orientation"]
       40 CALL                             R6 2 1
       41 SETTABLEKS                       R6 R5 K7 ["Divider"]
       43 CALL                             R2 3 -1
       44 RETURN                           R2 -1

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
