PROTO_0:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 JUMPIFNOT                        R2 ; [+3]
        3 GETTABLEKS                       R1 R0 K0 ["disabled"]
        5 JUMP                             ; [+1]
        6 LOADNIL                          R1
        7 GETUPVAL                         R2 1
        8 GETTABLEKS                       R2 R2 K1 ["createNextOrder"]
       10 CALL                             R2 0 1
       11 GETUPVAL                         R3 2
       12 GETTABLEKS                       R3 R3 K2 ["createElement"]
       14 GETUPVAL                         R4 3
       15 DUPTABLE                         R5 K7 [{["GroupTransparency"], ["LayoutOrder"], ["tag"] = "columns-input col align-y-center size-0-full"}]
       16 JUMPIFNOT                        R1 ; [+2]
       17 LOADK                            R6 K8 [0.5]
       18 JUMP                             ; [+1]
       19 LOADNIL                          R6
       20 SETTABLEKS                       R6 R5 K3 ["GroupTransparency"]
       22 GETTABLEKS                       R6 R0 K4 ["LayoutOrder"]
       24 SETTABLEKS                       R6 R5 K4 ["LayoutOrder"]
       26 DUPTABLE                         R6 K11 [{"Container", "Divider"}]
       27 GETUPVAL                         R7 2
       28 GETTABLEKS                       R7 R7 K2 ["createElement"]
       30 GETUPVAL                         R8 3
       31 DUPTABLE                         R9 K13 [{["LayoutOrder"], ["tag"] = "size-0-full"}]
       32 MOVE                             R10 R2
       33 CALL                             R10 0 1
       34 SETTABLEKS                       R10 R9 K4 ["LayoutOrder"]
       36 CALL                             R7 2 1
       37 SETTABLEKS                       R7 R6 K9 ["Container"]
       39 GETUPVAL                         R7 2
       40 GETTABLEKS                       R7 R7 K2 ["createElement"]
       42 GETUPVAL                         R8 4
       43 DUPTABLE                         R9 K16 [{["LayoutOrder"], ["orientation"], ["tag"] = "auto-x"}]
       44 MOVE                             R10 R2
       45 CALL                             R10 0 1
       46 SETTABLEKS                       R10 R9 K4 ["LayoutOrder"]
       48 GETUPVAL                         R10 5
       49 GETTABLEKS                       R10 R10 K17 ["Horizontal"]
       51 SETTABLEKS                       R10 R9 K14 ["orientation"]
       53 CALL                             R7 2 1
       54 SETTABLEKS                       R7 R6 K10 ["Divider"]
       56 CALL                             R3 3 -1
       57 RETURN                           R3 -1

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
       36 GETIMPORT                        R7 K5 [require]
       38 GETTABLEKS                       R8 R0 K14 ["Src"]
       40 GETTABLEKS                       R8 R8 K15 ["Flags"]
       42 GETTABLEKS                       R8 R8 K16 ["getFFlagIAMBooleanProperties"]
       44 CALL                             R7 1 1
       45 DUPCLOSURE                       R8 K17 [PROTO_0]
       46 CAPTURE                          VAL R7
       47 CAPTURE                          VAL R2
       48 CAPTURE                          VAL R1
       49 CAPTURE                          VAL R4
       50 CAPTURE                          VAL R5
       51 CAPTURE                          VAL R6
       52 RETURN                           R8 1
