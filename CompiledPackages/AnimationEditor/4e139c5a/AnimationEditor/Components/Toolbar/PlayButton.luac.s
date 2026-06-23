PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useContext"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["Context"]
        6 CALL                             R1 1 1
        7 GETUPVAL                         R3 2
        8 CALL                             R3 0 1
        9 JUMPIFNOT                        R3 ; [+3]
       10 GETUPVAL                         R2 3
       11 CALL                             R2 0 1
       12 JUMP                             ; [+1]
       13 LOADNIL                          R2
       14 GETUPVAL                         R3 0
       15 GETTABLEKS                       R3 R3 K2 ["createElement"]
       17 GETUPVAL                         R4 4
       18 GETTABLEKS                       R4 R4 K3 ["IconButton"]
       20 DUPTABLE                         R5 K10 [{"icon", "isDisabled", "size", "onActivated", "LayoutOrder", "testId"}]
       21 GETTABLEKS                       R7 R1 K11 ["isPlaying"]
       23 JUMPIFNOT                        R7 ; [+8]
       24 GETUPVAL                         R6 4
       25 GETTABLEKS                       R6 R6 K12 ["Enums"]
       27 GETTABLEKS                       R6 R6 K13 ["IconName"]
       29 GETTABLEKS                       R6 R6 K14 ["PauseLarge"]
       31 JUMP                             ; [+7]
       32 GETUPVAL                         R6 4
       33 GETTABLEKS                       R6 R6 K12 ["Enums"]
       35 GETTABLEKS                       R6 R6 K13 ["IconName"]
       37 GETTABLEKS                       R6 R6 K15 ["PlayLarge"]
       39 SETTABLEKS                       R6 R5 K4 ["icon"]
       41 SETTABLEKS                       R2 R5 K5 ["isDisabled"]
       43 GETUPVAL                         R6 4
       44 GETTABLEKS                       R6 R6 K12 ["Enums"]
       46 GETTABLEKS                       R6 R6 K16 ["IconSize"]
       48 GETTABLEKS                       R6 R6 K17 ["XSmall"]
       50 SETTABLEKS                       R6 R5 K6 ["size"]
       52 GETTABLEKS                       R6 R1 K18 ["toggleIsPlayingAsync"]
       54 SETTABLEKS                       R6 R5 K7 ["onActivated"]
       56 GETTABLEKS                       R6 R0 K8 ["LayoutOrder"]
       58 SETTABLEKS                       R6 R5 K8 ["LayoutOrder"]
       60 GETTABLEKS                       R7 R1 K11 ["isPlaying"]
       62 JUMPIFNOT                        R7 ; [+2]
       63 LOADK                            R6 K19 ["PlayButton-Stop"]
       64 JUMP                             ; [+1]
       65 LOADK                            R6 K20 ["PlayButton-Play"]
       66 SETTABLEKS                       R6 R5 K9 ["testId"]
       68 CALL                             R3 2 -1
       69 RETURN                           R3 -1

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
       18 GETTABLEKS                       R3 R3 K9 ["PlayStateContext"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Parent"]
       25 GETTABLEKS                       R4 R4 K10 ["React"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K11 ["Flags"]
       32 GETTABLEKS                       R5 R5 K12 ["getFFlagAnimGraphUI_RunTimeDebug"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R6 R0 K13 ["Components"]
       39 GETTABLEKS                       R6 R6 K14 ["Toolbar"]
       41 GETTABLEKS                       R6 R6 K15 ["useIsPlayControlsDisabled"]
       43 CALL                             R5 1 1
       44 DUPCLOSURE                       R6 K16 [PROTO_0]
       45 CAPTURE                          VAL R3
       46 CAPTURE                          VAL R2
       47 CAPTURE                          VAL R4
       48 CAPTURE                          VAL R5
       49 CAPTURE                          VAL R1
       50 RETURN                           R6 1
