PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["toggleIsPlayingAsync"]
        3 CALL                             R0 0 0
        4 RETURN                           R0 0

PROTO_1:
        0 GETIMPORT                        R0 K2 [task.spawn]
        2 NEWCLOSURE                       R1 P0
        3 CAPTURE                          UPVAL U0
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useContext"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["Context"]
        6 CALL                             R1 1 1
        7 GETUPVAL                         R3 2
        8 CALL                             R3 0 1
        9 JUMPIFNOT                        R3 ; [+5]
       10 GETUPVAL                         R2 3
       11 NEWTABLE                         R3 0 0
       13 CALL                             R2 1 1
       14 JUMP                             ; [+1]
       15 LOADNIL                          R2
       16 GETUPVAL                         R3 0
       17 GETTABLEKS                       R3 R3 K2 ["useCallback"]
       19 NEWCLOSURE                       R4 P0
       20 CAPTURE                          VAL R1
       21 NEWTABLE                         R5 0 1
       23 GETTABLEKS                       R6 R1 K3 ["toggleIsPlayingAsync"]
       25 SETLIST                          R5 R6 1 [1]
       27 CALL                             R3 2 1
       28 GETUPVAL                         R4 0
       29 GETTABLEKS                       R4 R4 K4 ["createElement"]
       31 GETUPVAL                         R5 4
       32 GETTABLEKS                       R5 R5 K5 ["IconButton"]
       34 DUPTABLE                         R6 K13 [{"icon", "isDisabled", "variant", "size", "onActivated", "LayoutOrder", "testId"}]
       35 GETTABLEKS                       R8 R1 K14 ["isPlaying"]
       37 JUMPIFNOT                        R8 ; [+8]
       38 GETUPVAL                         R7 4
       39 GETTABLEKS                       R7 R7 K15 ["Enums"]
       41 GETTABLEKS                       R7 R7 K16 ["IconName"]
       43 GETTABLEKS                       R7 R7 K17 ["PauseLarge"]
       45 JUMP                             ; [+7]
       46 GETUPVAL                         R7 4
       47 GETTABLEKS                       R7 R7 K15 ["Enums"]
       49 GETTABLEKS                       R7 R7 K16 ["IconName"]
       51 GETTABLEKS                       R7 R7 K18 ["PlayLarge"]
       53 SETTABLEKS                       R7 R6 K6 ["icon"]
       55 SETTABLEKS                       R2 R6 K7 ["isDisabled"]
       57 GETUPVAL                         R8 2
       58 CALL                             R8 0 1
       59 JUMPIFNOT                        R8 ; [+13]
       60 GETTABLEKS                       R8 R1 K14 ["isPlaying"]
       62 JUMPIFNOT                        R8 ; [+8]
       63 GETUPVAL                         R7 4
       64 GETTABLEKS                       R7 R7 K15 ["Enums"]
       66 GETTABLEKS                       R7 R7 K19 ["ButtonVariant"]
       68 GETTABLEKS                       R7 R7 K20 ["Standard"]
       70 JUMP                             ; [+3]
       71 LOADNIL                          R7
       72 JUMP                             ; [+1]
       73 LOADNIL                          R7
       74 SETTABLEKS                       R7 R6 K8 ["variant"]
       76 GETUPVAL                         R7 4
       77 GETTABLEKS                       R7 R7 K15 ["Enums"]
       79 GETTABLEKS                       R7 R7 K21 ["IconSize"]
       81 GETTABLEKS                       R7 R7 K22 ["XSmall"]
       83 SETTABLEKS                       R7 R6 K9 ["size"]
       85 GETUPVAL                         R8 2
       86 CALL                             R8 0 1
       87 JUMPIFNOT                        R8 ; [+2]
       88 MOVE                             R7 R3
       89 JUMP                             ; [+2]
       90 GETTABLEKS                       R7 R1 K3 ["toggleIsPlayingAsync"]
       92 SETTABLEKS                       R7 R6 K10 ["onActivated"]
       94 GETTABLEKS                       R7 R0 K11 ["LayoutOrder"]
       96 SETTABLEKS                       R7 R6 K11 ["LayoutOrder"]
       98 GETTABLEKS                       R8 R1 K14 ["isPlaying"]
      100 JUMPIFNOT                        R8 ; [+2]
      101 LOADK                            R7 K23 ["PlayButton-Stop"]
      102 JUMP                             ; [+1]
      103 LOADK                            R7 K24 ["PlayButton-Play"]
      104 SETTABLEKS                       R7 R6 K12 ["testId"]
      106 CALL                             R4 2 -1
      107 RETURN                           R4 -1

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
       44 DUPCLOSURE                       R6 K16 [PROTO_2]
       45 CAPTURE                          VAL R3
       46 CAPTURE                          VAL R2
       47 CAPTURE                          VAL R4
       48 CAPTURE                          VAL R5
       49 CAPTURE                          VAL R1
       50 RETURN                           R6 1
