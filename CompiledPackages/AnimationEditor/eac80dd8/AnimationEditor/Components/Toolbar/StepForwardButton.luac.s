PROTO_0:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 JUMPIFNOT                        R2 ; [+9]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K0 ["ContextServices"]
        6 GETTABLEKS                       R1 R1 K1 ["Localization"]
        8 NAMECALL                         R1 R1 K2 ["use"]
       10 CALL                             R1 1 1
       11 JUMP                             ; [+1]
       12 LOADNIL                          R1
       13 GETUPVAL                         R2 2
       14 GETTABLEKS                       R2 R2 K3 ["useContext"]
       16 GETUPVAL                         R3 3
       17 GETTABLEKS                       R3 R3 K4 ["Context"]
       19 CALL                             R2 1 1
       20 GETUPVAL                         R4 4
       21 CALL                             R4 0 1
       22 JUMPIFNOT                        R4 ; [+5]
       23 GETUPVAL                         R3 5
       24 NEWTABLE                         R4 0 0
       26 CALL                             R3 1 1
       27 JUMP                             ; [+1]
       28 LOADNIL                          R3
       29 GETUPVAL                         R4 2
       30 GETTABLEKS                       R4 R4 K5 ["createElement"]
       32 GETUPVAL                         R5 6
       33 GETTABLEKS                       R5 R5 K6 ["IconButton"]
       35 DUPTABLE                         R6 K13 [{["icon"], ["size"], ["onActivated"], ["isDisabled"], ["testId"] = "StepForwardButton"}]
       36 GETUPVAL                         R7 6
       37 GETTABLEKS                       R7 R7 K14 ["Enums"]
       39 GETTABLEKS                       R7 R7 K15 ["IconName"]
       41 GETTABLEKS                       R7 R7 K16 ["SkipEndSmall"]
       43 SETTABLEKS                       R7 R6 K7 ["icon"]
       45 GETUPVAL                         R7 6
       46 GETTABLEKS                       R7 R7 K14 ["Enums"]
       48 GETTABLEKS                       R7 R7 K17 ["IconSize"]
       50 GETTABLEKS                       R7 R7 K18 ["XSmall"]
       52 SETTABLEKS                       R7 R6 K8 ["size"]
       54 GETTABLEKS                       R7 R2 K19 ["stepForwardAsync"]
       56 SETTABLEKS                       R7 R6 K9 ["onActivated"]
       58 SETTABLEKS                       R3 R6 K10 ["isDisabled"]
       60 CALL                             R4 2 1
       61 GETUPVAL                         R5 0
       62 CALL                             R5 0 1
       63 JUMPIFNOT                        R5 ; [+32]
       64 GETUPVAL                         R5 2
       65 GETTABLEKS                       R5 R5 K5 ["createElement"]
       67 GETUPVAL                         R6 6
       68 GETTABLEKS                       R6 R6 K20 ["Tooltip"]
       70 DUPTABLE                         R7 K24 [{"title", "side", "LayoutOrder"}]
       71 LOADK                            R10 K25 ["Common"]
       72 LOADK                            R11 K26 ["AnimationEditor"]
       73 LOADK                            R12 K27 ["Toolbar"]
       74 LOADK                            R13 K28 ["StepForwardTooltip"]
       75 NAMECALL                         R8 R1 K29 ["getExternalText"]
       77 CALL                             R8 5 1
       78 SETTABLEKS                       R8 R7 K21 ["title"]
       80 GETUPVAL                         R8 6
       81 GETTABLEKS                       R8 R8 K14 ["Enums"]
       83 GETTABLEKS                       R8 R8 K30 ["PopoverSide"]
       85 GETTABLEKS                       R8 R8 K31 ["Bottom"]
       87 SETTABLEKS                       R8 R7 K22 ["side"]
       89 GETTABLEKS                       R8 R0 K23 ["LayoutOrder"]
       91 SETTABLEKS                       R8 R7 K23 ["LayoutOrder"]
       93 MOVE                             R8 R4
       94 CALL                             R5 3 -1
       95 RETURN                           R5 -1
       96 RETURN                           R4 1

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
       16 GETTABLEKS                       R3 R0 K6 ["Parent"]
       18 GETTABLEKS                       R3 R3 K8 ["Framework"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K9 ["Contexts"]
       25 GETTABLEKS                       R4 R4 K10 ["PlayStateContext"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K6 ["Parent"]
       32 GETTABLEKS                       R5 R5 K11 ["React"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R6 R0 K12 ["Flags"]
       39 GETTABLEKS                       R6 R6 K13 ["getFFlagAnimGraphUIButtonTooltips"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K5 [require]
       44 GETTABLEKS                       R7 R0 K12 ["Flags"]
       46 GETTABLEKS                       R7 R7 K14 ["getFFlagAnimGraphUI_RunTimeDebug"]
       48 CALL                             R6 1 1
       49 GETIMPORT                        R7 K5 [require]
       51 GETTABLEKS                       R8 R0 K15 ["Components"]
       53 GETTABLEKS                       R8 R8 K16 ["Toolbar"]
       55 GETTABLEKS                       R8 R8 K17 ["useIsPlayControlsDisabled"]
       57 CALL                             R7 1 1
       58 DUPCLOSURE                       R8 K18 [PROTO_0]
       59 CAPTURE                          VAL R5
       60 CAPTURE                          VAL R2
       61 CAPTURE                          VAL R4
       62 CAPTURE                          VAL R3
       63 CAPTURE                          VAL R6
       64 CAPTURE                          VAL R7
       65 CAPTURE                          VAL R1
       66 RETURN                           R8 1
