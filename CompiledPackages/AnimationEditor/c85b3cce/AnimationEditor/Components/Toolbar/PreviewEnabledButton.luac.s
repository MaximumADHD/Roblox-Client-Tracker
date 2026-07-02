PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["toggleIsPreviewEnabledAsync"]
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
        9 JUMPIFNOT                        R3 ; [+4]
       10 GETUPVAL                         R2 3
       11 DUPTABLE                         R3 K4 [{["isPreviewButton"] = True}]
       12 CALL                             R2 1 1
       13 JUMP                             ; [+1]
       14 LOADNIL                          R2
       15 GETUPVAL                         R3 0
       16 GETTABLEKS                       R3 R3 K5 ["useCallback"]
       18 NEWCLOSURE                       R4 P0
       19 CAPTURE                          VAL R1
       20 NEWTABLE                         R5 0 1
       22 GETTABLEKS                       R6 R1 K6 ["toggleIsPreviewEnabledAsync"]
       24 SETLIST                          R5 R6 1 [1]
       26 CALL                             R3 2 1
       27 GETUPVAL                         R4 0
       28 GETTABLEKS                       R4 R4 K7 ["createElement"]
       30 GETUPVAL                         R5 4
       31 GETTABLEKS                       R5 R5 K8 ["IconButton"]
       33 DUPTABLE                         R6 K16 [{"icon", "isDisabled", "variant", "size", "onActivated", "LayoutOrder", "testId"}]
       34 GETTABLEKS                       R8 R1 K17 ["isPreviewEnabled"]
       36 JUMPIFNOT                        R8 ; [+8]
       37 GETUPVAL                         R7 4
       38 GETTABLEKS                       R7 R7 K18 ["Enums"]
       40 GETTABLEKS                       R7 R7 K19 ["IconName"]
       42 GETTABLEKS                       R7 R7 K20 ["Eye"]
       44 JUMP                             ; [+7]
       45 GETUPVAL                         R7 4
       46 GETTABLEKS                       R7 R7 K18 ["Enums"]
       48 GETTABLEKS                       R7 R7 K19 ["IconName"]
       50 GETTABLEKS                       R7 R7 K21 ["EyeSlash"]
       52 SETTABLEKS                       R7 R6 K9 ["icon"]
       54 SETTABLEKS                       R2 R6 K10 ["isDisabled"]
       56 GETTABLEKS                       R8 R1 K17 ["isPreviewEnabled"]
       58 JUMPIFNOT                        R8 ; [+8]
       59 GETUPVAL                         R7 4
       60 GETTABLEKS                       R7 R7 K18 ["Enums"]
       62 GETTABLEKS                       R7 R7 K22 ["ButtonVariant"]
       64 GETTABLEKS                       R7 R7 K23 ["Standard"]
       66 JUMP                             ; [+1]
       67 LOADNIL                          R7
       68 SETTABLEKS                       R7 R6 K11 ["variant"]
       70 GETUPVAL                         R7 4
       71 GETTABLEKS                       R7 R7 K18 ["Enums"]
       73 GETTABLEKS                       R7 R7 K24 ["IconSize"]
       75 GETTABLEKS                       R7 R7 K25 ["XSmall"]
       77 SETTABLEKS                       R7 R6 K12 ["size"]
       79 SETTABLEKS                       R3 R6 K13 ["onActivated"]
       81 GETTABLEKS                       R7 R0 K14 ["LayoutOrder"]
       83 SETTABLEKS                       R7 R6 K14 ["LayoutOrder"]
       85 GETTABLEKS                       R8 R1 K17 ["isPreviewEnabled"]
       87 JUMPIFNOT                        R8 ; [+2]
       88 LOADK                            R7 K26 ["PreviewEnabledButton-Stop"]
       89 JUMP                             ; [+1]
       90 LOADK                            R7 K27 ["PreviewEnabledButton-Start"]
       91 SETTABLEKS                       R7 R6 K15 ["testId"]
       93 CALL                             R4 2 -1
       94 RETURN                           R4 -1

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
