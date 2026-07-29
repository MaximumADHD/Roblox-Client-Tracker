PROTO_0:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIFNOT                        R1 ; [+3]
        3 GETTABLEKS                       R2 R0 K0 ["overlay"]
        5 JUMPIF                           R2 ; [+2]
        6 LOADNIL                          R2
        7 RETURN                           R2 1
        8 GETUPVAL                         R2 1
        9 GETTABLEKS                       R2 R2 K1 ["createPortal"]
       11 GETUPVAL                         R3 2
       12 GETTABLEKS                       R3 R3 K2 ["createElement"]
       14 LOADK                            R4 K3 ["StyleLink"]
       15 DUPTABLE                         R5 K5 [{"StyleSheet"}]
       16 SETTABLEKS                       R1 R5 K4 ["StyleSheet"]
       18 CALL                             R3 2 1
       19 GETTABLEKS                       R4 R0 K0 ["overlay"]
       21 CALL                             R2 2 -1
       22 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["DesignAssist"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["ReactRoblox"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R4 K9 ["_Index"]
       27 GETTABLEKS                       R4 R4 K10 ["Foundation"]
       29 GETTABLEKS                       R4 R4 K10 ["Foundation"]
       31 GETTABLEKS                       R4 R4 K11 ["Providers"]
       33 GETTABLEKS                       R4 R4 K12 ["Style"]
       35 GETTABLEKS                       R4 R4 K13 ["StyleSheetContext"]
       37 CALL                             R3 1 1
       38 GETTABLEKS                       R3 R3 K14 ["useStyleSheet"]
       40 DUPCLOSURE                       R4 K15 [PROTO_0]
       41 CAPTURE                          VAL R3
       42 CAPTURE                          VAL R2
       43 CAPTURE                          VAL R1
       44 RETURN                           R4 1
