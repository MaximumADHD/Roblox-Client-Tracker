PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useState"]
        3 LOADNIL                          R2
        4 CALL                             R1 1 2
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R3 R3 K1 ["createElement"]
        8 GETUPVAL                         R4 0
        9 GETTABLEKS                       R4 R4 K2 ["Fragment"]
       11 NEWTABLE                         R5 0 0
       13 DUPTABLE                         R6 K5 [{"Overlay", "Contents"}]
       14 GETUPVAL                         R7 0
       15 GETTABLEKS                       R7 R7 K1 ["createElement"]
       17 GETUPVAL                         R8 1
       18 GETTABLEKS                       R8 R8 K6 ["View"]
       20 DUPTABLE                         R9 K13 [{["tag"] = "size-full-full", ["ZIndex"] = 1000, ["ref"], ["testId"] = "Overlay"}]
       21 SETTABLEKS                       R2 R9 K11 ["ref"]
       23 CALL                             R7 2 1
       24 SETTABLEKS                       R7 R6 K3 ["Overlay"]
       26 MOVE                             R7 R1
       27 JUMPIFNOT                        R7 ; [+12]
       28 GETUPVAL                         R7 0
       29 GETTABLEKS                       R7 R7 K1 ["createElement"]
       31 GETUPVAL                         R8 1
       32 GETTABLEKS                       R8 R8 K14 ["OverlayProvider"]
       34 DUPTABLE                         R9 K16 [{"gui"}]
       35 SETTABLEKS                       R1 R9 K15 ["gui"]
       37 GETTABLEKS                       R10 R0 K17 ["children"]
       39 CALL                             R7 3 1
       40 SETTABLEKS                       R7 R6 K4 ["Contents"]
       42 CALL                             R3 3 -1
       43 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["InputActionManager"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Foundation"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["React"]
       20 CALL                             R2 1 1
       21 DUPCLOSURE                       R3 K9 [PROTO_0]
       22 CAPTURE                          VAL R2
       23 CAPTURE                          VAL R1
       24 RETURN                           R3 1
