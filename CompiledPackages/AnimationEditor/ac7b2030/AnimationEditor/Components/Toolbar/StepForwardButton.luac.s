PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useContext"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["Context"]
        6 CALL                             R1 1 1
        7 GETUPVAL                         R3 2
        8 CALL                             R3 0 1
        9 JUMPIFNOT                        R3 ; [+8]
       10 GETUPVAL                         R2 0
       11 GETTABLEKS                       R2 R2 K0 ["useContext"]
       13 GETUPVAL                         R3 3
       14 GETTABLEKS                       R3 R3 K1 ["Context"]
       16 CALL                             R2 1 1
       17 JUMP                             ; [+1]
       18 LOADNIL                          R2
       19 GETUPVAL                         R3 0
       20 GETTABLEKS                       R3 R3 K2 ["createElement"]
       22 GETUPVAL                         R4 4
       23 GETTABLEKS                       R4 R4 K3 ["IconButton"]
       25 DUPTABLE                         R5 K9 [{"icon", "size", "onActivated", "LayoutOrder", "isDisabled"}]
       26 GETUPVAL                         R6 4
       27 GETTABLEKS                       R6 R6 K10 ["Enums"]
       29 GETTABLEKS                       R6 R6 K11 ["IconName"]
       31 GETTABLEKS                       R6 R6 K12 ["SkipEndSmall"]
       33 SETTABLEKS                       R6 R5 K4 ["icon"]
       35 GETUPVAL                         R6 4
       36 GETTABLEKS                       R6 R6 K10 ["Enums"]
       38 GETTABLEKS                       R6 R6 K13 ["IconSize"]
       40 GETTABLEKS                       R6 R6 K14 ["XSmall"]
       42 SETTABLEKS                       R6 R5 K5 ["size"]
       44 GETTABLEKS                       R6 R1 K15 ["stepForwardAsync"]
       46 SETTABLEKS                       R6 R5 K6 ["onActivated"]
       48 GETTABLEKS                       R6 R0 K7 ["LayoutOrder"]
       50 SETTABLEKS                       R6 R5 K7 ["LayoutOrder"]
       52 GETUPVAL                         R7 2
       53 CALL                             R7 0 1
       54 JUMPIFNOT                        R7 ; [+3]
       55 GETTABLEKS                       R6 R2 K16 ["isPreviewRunning"]
       57 JUMP                             ; [+1]
       58 LOADNIL                          R6
       59 SETTABLEKS                       R6 R5 K8 ["isDisabled"]
       61 CALL                             R3 2 -1
       62 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R2 K7 ["Foundation"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Contexts"]
       18 GETTABLEKS                       R3 R3 K9 ["GraphPlayedContext"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K8 ["Contexts"]
       25 GETTABLEKS                       R4 R4 K10 ["PlayStateContext"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K6 ["Parent"]
       32 GETTABLEKS                       R5 R5 K11 ["React"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R6 R0 K12 ["Flags"]
       39 GETTABLEKS                       R6 R6 K13 ["getFFlagAnimGraphUI_RunTimeDebug"]
       41 CALL                             R5 1 1
       42 DUPCLOSURE                       R6 K14 [PROTO_0]
       43 CAPTURE                          VAL R4
       44 CAPTURE                          VAL R3
       45 CAPTURE                          VAL R5
       46 CAPTURE                          VAL R2
       47 CAPTURE                          VAL R1
       48 RETURN                           R6 1
