PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["disabled"]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K1 ["createNextOrder"]
        5 CALL                             R2 0 1
        6 GETUPVAL                         R3 1
        7 GETTABLEKS                       R3 R3 K2 ["createElement"]
        9 GETUPVAL                         R4 2
       10 DUPTABLE                         R5 K7 [{["GroupTransparency"], ["LayoutOrder"], ["tag"] = "columns-input col align-y-center size-0-full"}]
       11 JUMPIFNOT                        R1 ; [+2]
       12 LOADK                            R6 K8 [0.5]
       13 JUMP                             ; [+1]
       14 LOADNIL                          R6
       15 SETTABLEKS                       R6 R5 K3 ["GroupTransparency"]
       17 GETTABLEKS                       R6 R0 K4 ["LayoutOrder"]
       19 SETTABLEKS                       R6 R5 K4 ["LayoutOrder"]
       21 DUPTABLE                         R6 K11 [{"Container", "Divider"}]
       22 GETUPVAL                         R7 1
       23 GETTABLEKS                       R7 R7 K2 ["createElement"]
       25 GETUPVAL                         R8 2
       26 DUPTABLE                         R9 K13 [{["LayoutOrder"], ["tag"] = "size-0-full"}]
       27 MOVE                             R10 R2
       28 CALL                             R10 0 1
       29 SETTABLEKS                       R10 R9 K4 ["LayoutOrder"]
       31 CALL                             R7 2 1
       32 SETTABLEKS                       R7 R6 K9 ["Container"]
       34 GETUPVAL                         R7 1
       35 GETTABLEKS                       R7 R7 K2 ["createElement"]
       37 GETUPVAL                         R8 3
       38 DUPTABLE                         R9 K16 [{["LayoutOrder"], ["orientation"], ["tag"] = "auto-x"}]
       39 MOVE                             R10 R2
       40 CALL                             R10 0 1
       41 SETTABLEKS                       R10 R9 K4 ["LayoutOrder"]
       43 GETUPVAL                         R10 4
       44 GETTABLEKS                       R10 R10 K17 ["Horizontal"]
       46 SETTABLEKS                       R10 R9 K14 ["orientation"]
       48 CALL                             R7 2 1
       49 SETTABLEKS                       R7 R6 K10 ["Divider"]
       51 CALL                             R3 3 -1
       52 RETURN                           R3 -1

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
