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
       20 GETUPVAL                         R3 4
       21 NEWTABLE                         R4 0 0
       23 CALL                             R3 1 1
       24 GETUPVAL                         R4 2
       25 GETTABLEKS                       R4 R4 K5 ["createElement"]
       27 GETUPVAL                         R5 5
       28 GETTABLEKS                       R5 R5 K6 ["IconButton"]
       30 DUPTABLE                         R6 K13 [{["icon"], ["size"], ["onActivated"], ["isDisabled"], ["testId"] = "StepForwardButton"}]
       31 GETUPVAL                         R7 5
       32 GETTABLEKS                       R7 R7 K14 ["Enums"]
       34 GETTABLEKS                       R7 R7 K15 ["IconName"]
       36 GETTABLEKS                       R7 R7 K16 ["SkipEndSmall"]
       38 SETTABLEKS                       R7 R6 K7 ["icon"]
       40 GETUPVAL                         R7 5
       41 GETTABLEKS                       R7 R7 K14 ["Enums"]
       43 GETTABLEKS                       R7 R7 K17 ["IconSize"]
       45 GETTABLEKS                       R7 R7 K18 ["XSmall"]
       47 SETTABLEKS                       R7 R6 K8 ["size"]
       49 GETTABLEKS                       R7 R2 K19 ["stepForwardAsync"]
       51 SETTABLEKS                       R7 R6 K9 ["onActivated"]
       53 SETTABLEKS                       R3 R6 K10 ["isDisabled"]
       55 CALL                             R4 2 1
       56 GETUPVAL                         R5 0
       57 CALL                             R5 0 1
       58 JUMPIFNOT                        R5 ; [+32]
       59 GETUPVAL                         R5 2
       60 GETTABLEKS                       R5 R5 K5 ["createElement"]
       62 GETUPVAL                         R6 5
       63 GETTABLEKS                       R6 R6 K20 ["Tooltip"]
       65 DUPTABLE                         R7 K24 [{"title", "side", "LayoutOrder"}]
       66 LOADK                            R10 K25 ["Common"]
       67 LOADK                            R11 K26 ["AnimationEditor"]
       68 LOADK                            R12 K27 ["Toolbar"]
       69 LOADK                            R13 K28 ["StepForwardTooltip"]
       70 NAMECALL                         R8 R1 K29 ["getExternalText"]
       72 CALL                             R8 5 1
       73 SETTABLEKS                       R8 R7 K21 ["title"]
       75 GETUPVAL                         R8 5
       76 GETTABLEKS                       R8 R8 K14 ["Enums"]
       78 GETTABLEKS                       R8 R8 K30 ["PopoverSide"]
       80 GETTABLEKS                       R8 R8 K31 ["Bottom"]
       82 SETTABLEKS                       R8 R7 K22 ["side"]
       84 GETTABLEKS                       R8 R0 K23 ["LayoutOrder"]
       86 SETTABLEKS                       R8 R7 K23 ["LayoutOrder"]
       88 MOVE                             R8 R4
       89 CALL                             R5 3 -1
       90 RETURN                           R5 -1
       91 RETURN                           R4 1

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
       44 GETTABLEKS                       R7 R0 K14 ["Components"]
       46 GETTABLEKS                       R7 R7 K15 ["Toolbar"]
       48 GETTABLEKS                       R7 R7 K16 ["useIsPlayControlsDisabled"]
       50 CALL                             R6 1 1
       51 DUPCLOSURE                       R7 K17 [PROTO_0]
       52 CAPTURE                          VAL R5
       53 CAPTURE                          VAL R2
       54 CAPTURE                          VAL R4
       55 CAPTURE                          VAL R3
       56 CAPTURE                          VAL R6
       57 CAPTURE                          VAL R1
       58 RETURN                           R7 1
