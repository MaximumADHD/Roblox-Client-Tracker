PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["use"]
        3 CALL                             R1 0 1
        4 NAMECALL                         R1 R1 K1 ["get"]
        6 CALL                             R1 1 1
        7 GETUPVAL                         R3 1
        8 JUMPIFNOT                        R3 ; [+7]
        9 GETUPVAL                         R2 2
       10 GETTABLEKS                       R2 R2 K2 ["Hooks"]
       12 GETTABLEKS                       R2 R2 K3 ["useStyleSheet"]
       14 CALL                             R2 0 1
       15 JUMP                             ; [+1]
       16 LOADNIL                          R2
       17 GETTABLEKS                       R3 R0 K4 ["isOpen"]
       19 JUMPIFNOT                        R3 ; [+3]
       20 GETTABLEKS                       R3 R0 K5 ["panel"]
       22 JUMPIF                           R3 ; [+2]
       23 LOADNIL                          R3
       24 RETURN                           R3 1
       25 GETUPVAL                         R3 3
       26 GETTABLEKS                       R3 R3 K6 ["createPortal"]
       28 GETUPVAL                         R4 4
       29 GETTABLEKS                       R4 R4 K7 ["createElement"]
       31 GETUPVAL                         R5 4
       32 GETTABLEKS                       R5 R5 K8 ["Fragment"]
       34 LOADNIL                          R6
       35 GETUPVAL                         R7 4
       36 GETTABLEKS                       R7 R7 K7 ["createElement"]
       38 GETUPVAL                         R8 4
       39 GETTABLEKS                       R8 R8 K8 ["Fragment"]
       41 LOADNIL                          R9
       42 GETTABLEKS                       R10 R0 K9 ["children"]
       44 CALL                             R7 3 1
       45 GETUPVAL                         R8 4
       46 GETTABLEKS                       R8 R8 K7 ["createElement"]
       48 LOADK                            R9 K10 ["StyleLink"]
       49 DUPTABLE                         R10 K12 [{"StyleSheet"}]
       50 SETTABLEKS                       R1 R10 K11 ["StyleSheet"]
       52 CALL                             R8 2 1
       53 JUMPIFNOT                        R2 ; [+9]
       54 GETUPVAL                         R9 4
       55 GETTABLEKS                       R9 R9 K7 ["createElement"]
       57 LOADK                            R10 K10 ["StyleLink"]
       58 DUPTABLE                         R11 K12 [{"StyleSheet"}]
       59 SETTABLEKS                       R2 R11 K11 ["StyleSheet"]
       61 CALL                             R9 2 1
       62 JUMP                             ; [+1]
       63 LOADNIL                          R9
       64 CALL                             R4 5 1
       65 GETTABLEKS                       R5 R0 K5 ["panel"]
       67 GETTABLEKS                       R5 R5 K13 ["container"]
       69 CALL                             R3 2 -1
       70 RETURN                           R3 -1

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
       21 GETTABLEKS                       R5 R1 K9 ["Foundation"]
       23 CALL                             R4 1 1
       24 GETIMPORT                        R5 K6 [require]
       26 GETTABLEKS                       R6 R1 K10 ["Framework"]
       28 CALL                             R5 1 1
       29 GETTABLEKS                       R6 R5 K11 ["ContextServices"]
       31 GETTABLEKS                       R7 R6 K12 ["Design"]
       33 GETIMPORT                        R8 K6 [require]
       35 GETTABLEKS                       R9 R0 K13 ["SharedFlags"]
       37 GETTABLEKS                       R9 R9 K14 ["getFFlagStudioFoundationPopupTooltipFix"]
       39 CALL                             R8 1 1
       40 CALL                             R8 0 1
       41 DUPCLOSURE                       R9 K15 [PROTO_0]
       42 CAPTURE                          VAL R7
       43 CAPTURE                          VAL R8
       44 CAPTURE                          VAL R4
       45 CAPTURE                          VAL R3
       46 CAPTURE                          VAL R2
       47 RETURN                           R9 1
