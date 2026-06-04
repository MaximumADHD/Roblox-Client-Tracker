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
       25 DUPTABLE                         R5 K10 [{"icon", "isDisabled", "size", "onActivated", "LayoutOrder", "testId"}]
       26 GETTABLEKS                       R7 R1 K11 ["isPlaying"]
       28 JUMPIFNOT                        R7 ; [+8]
       29 GETUPVAL                         R6 4
       30 GETTABLEKS                       R6 R6 K12 ["Enums"]
       32 GETTABLEKS                       R6 R6 K13 ["IconName"]
       34 GETTABLEKS                       R6 R6 K14 ["PauseLarge"]
       36 JUMP                             ; [+7]
       37 GETUPVAL                         R6 4
       38 GETTABLEKS                       R6 R6 K12 ["Enums"]
       40 GETTABLEKS                       R6 R6 K13 ["IconName"]
       42 GETTABLEKS                       R6 R6 K15 ["PlayLarge"]
       44 SETTABLEKS                       R6 R5 K4 ["icon"]
       46 GETUPVAL                         R7 2
       47 CALL                             R7 0 1
       48 JUMPIFNOT                        R7 ; [+3]
       49 GETTABLEKS                       R6 R2 K16 ["isPreviewRunning"]
       51 JUMP                             ; [+1]
       52 LOADNIL                          R6
       53 SETTABLEKS                       R6 R5 K5 ["isDisabled"]
       55 GETUPVAL                         R6 4
       56 GETTABLEKS                       R6 R6 K12 ["Enums"]
       58 GETTABLEKS                       R6 R6 K17 ["IconSize"]
       60 GETTABLEKS                       R6 R6 K18 ["XSmall"]
       62 SETTABLEKS                       R6 R5 K6 ["size"]
       64 GETTABLEKS                       R6 R1 K19 ["toggleIsPlayingAsync"]
       66 SETTABLEKS                       R6 R5 K7 ["onActivated"]
       68 GETTABLEKS                       R6 R0 K8 ["LayoutOrder"]
       70 SETTABLEKS                       R6 R5 K8 ["LayoutOrder"]
       72 GETTABLEKS                       R7 R1 K11 ["isPlaying"]
       74 JUMPIFNOT                        R7 ; [+2]
       75 LOADK                            R6 K20 ["PlayButton-Stop"]
       76 JUMP                             ; [+1]
       77 LOADK                            R6 K21 ["PlayButton-Play"]
       78 SETTABLEKS                       R6 R5 K9 ["testId"]
       80 CALL                             R3 2 -1
       81 RETURN                           R3 -1

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
