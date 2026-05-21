PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["use"]
        3 CALL                             R1 0 1
        4 NAMECALL                         R1 R1 K1 ["get"]
        6 CALL                             R1 1 1
        7 GETTABLEKS                       R2 R0 K2 ["isOpen"]
        9 JUMPIFNOT                        R2 ; [+3]
       10 GETTABLEKS                       R2 R0 K3 ["panel"]
       12 JUMPIF                           R2 ; [+2]
       13 LOADNIL                          R2
       14 RETURN                           R2 1
       15 GETUPVAL                         R2 1
       16 GETTABLEKS                       R2 R2 K4 ["createPortal"]
       18 GETUPVAL                         R3 2
       19 GETTABLEKS                       R3 R3 K5 ["createElement"]
       21 GETUPVAL                         R4 2
       22 GETTABLEKS                       R4 R4 K6 ["Fragment"]
       24 LOADNIL                          R5
       25 GETUPVAL                         R6 2
       26 GETTABLEKS                       R6 R6 K5 ["createElement"]
       28 GETUPVAL                         R7 2
       29 GETTABLEKS                       R7 R7 K6 ["Fragment"]
       31 LOADNIL                          R8
       32 GETTABLEKS                       R9 R0 K7 ["children"]
       34 CALL                             R6 3 1
       35 GETUPVAL                         R7 2
       36 GETTABLEKS                       R7 R7 K5 ["createElement"]
       38 LOADK                            R8 K8 ["StyleLink"]
       39 DUPTABLE                         R9 K10 [{"StyleSheet"}]
       40 SETTABLEKS                       R1 R9 K9 ["StyleSheet"]
       42 CALL                             R7 2 -1
       43 CALL                             R3 -1 1
       44 GETTABLEKS                       R4 R0 K3 ["panel"]
       46 GETTABLEKS                       R4 R4 K11 ["container"]
       48 CALL                             R2 2 -1
       49 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["StudioFoundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["React"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R1 K8 ["ReactRoblox"]
       18 CALL                             R3 1 1
       19 GETIMPORT                        R4 K6 [require]
       21 GETTABLEKS                       R5 R1 K9 ["Framework"]
       23 CALL                             R4 1 1
       24 GETTABLEKS                       R5 R4 K10 ["ContextServices"]
       26 GETTABLEKS                       R6 R5 K11 ["Design"]
       28 DUPCLOSURE                       R7 K12 [PROTO_0]
       29 CAPTURE                          VAL R6
       30 CAPTURE                          VAL R3
       31 CAPTURE                          VAL R2
       32 RETURN                           R7 1
