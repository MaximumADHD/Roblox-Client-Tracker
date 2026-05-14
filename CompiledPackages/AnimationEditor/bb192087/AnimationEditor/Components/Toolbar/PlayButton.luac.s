PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useContext"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["Context"]
        6 CALL                             R1 1 1
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R2 R2 K2 ["createElement"]
       10 GETUPVAL                         R3 2
       11 GETTABLEKS                       R3 R3 K3 ["IconButton"]
       13 DUPTABLE                         R4 K9 [{"icon", "size", "onActivated", "LayoutOrder", "testId"}]
       14 GETTABLEKS                       R6 R1 K10 ["isPlaying"]
       16 JUMPIFNOT                        R6 ; [+8]
       17 GETUPVAL                         R5 2
       18 GETTABLEKS                       R5 R5 K11 ["Enums"]
       20 GETTABLEKS                       R5 R5 K12 ["IconName"]
       22 GETTABLEKS                       R5 R5 K13 ["PauseLarge"]
       24 JUMP                             ; [+7]
       25 GETUPVAL                         R5 2
       26 GETTABLEKS                       R5 R5 K11 ["Enums"]
       28 GETTABLEKS                       R5 R5 K12 ["IconName"]
       30 GETTABLEKS                       R5 R5 K14 ["PlayLarge"]
       32 SETTABLEKS                       R5 R4 K4 ["icon"]
       34 GETUPVAL                         R5 2
       35 GETTABLEKS                       R5 R5 K11 ["Enums"]
       37 GETTABLEKS                       R5 R5 K15 ["IconSize"]
       39 GETTABLEKS                       R5 R5 K16 ["XSmall"]
       41 SETTABLEKS                       R5 R4 K5 ["size"]
       43 GETTABLEKS                       R5 R1 K17 ["toggleIsPlayingAsync"]
       45 SETTABLEKS                       R5 R4 K6 ["onActivated"]
       47 GETTABLEKS                       R5 R0 K7 ["LayoutOrder"]
       49 SETTABLEKS                       R5 R4 K7 ["LayoutOrder"]
       51 GETTABLEKS                       R6 R1 K10 ["isPlaying"]
       53 JUMPIFNOT                        R6 ; [+2]
       54 LOADK                            R5 K18 ["PlayButton-Stop"]
       55 JUMP                             ; [+1]
       56 LOADK                            R5 K19 ["PlayButton-Play"]
       57 SETTABLEKS                       R5 R4 K8 ["testId"]
       59 CALL                             R2 2 -1
       60 RETURN                           R2 -1

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
       28 DUPCLOSURE                       R4 K11 [PROTO_0]
       29 CAPTURE                          VAL R3
       30 CAPTURE                          VAL R2
       31 CAPTURE                          VAL R1
       32 RETURN                           R4 1
