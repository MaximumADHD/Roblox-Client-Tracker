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
       20 GETUPVAL                         R3 2
       21 GETTABLEKS                       R3 R3 K5 ["createElement"]
       23 GETUPVAL                         R4 4
       24 GETTABLEKS                       R4 R4 K6 ["IconButton"]
       26 DUPTABLE                         R5 K12 [{["icon"], ["size"], ["onActivated"], ["isDisabled"] = True}]
       27 GETUPVAL                         R6 4
       28 GETTABLEKS                       R6 R6 K13 ["Enums"]
       30 GETTABLEKS                       R6 R6 K14 ["IconName"]
       32 GETTABLEKS                       R6 R6 K15 ["SkipStartSmall"]
       34 SETTABLEKS                       R6 R5 K7 ["icon"]
       36 GETUPVAL                         R6 4
       37 GETTABLEKS                       R6 R6 K13 ["Enums"]
       39 GETTABLEKS                       R6 R6 K16 ["IconSize"]
       41 GETTABLEKS                       R6 R6 K17 ["XSmall"]
       43 SETTABLEKS                       R6 R5 K8 ["size"]
       45 GETTABLEKS                       R6 R2 K18 ["stepBackAsync"]
       47 SETTABLEKS                       R6 R5 K9 ["onActivated"]
       49 CALL                             R3 2 1
       50 GETUPVAL                         R4 0
       51 CALL                             R4 0 1
       52 JUMPIFNOT                        R4 ; [+32]
       53 GETUPVAL                         R4 2
       54 GETTABLEKS                       R4 R4 K5 ["createElement"]
       56 GETUPVAL                         R5 4
       57 GETTABLEKS                       R5 R5 K19 ["Tooltip"]
       59 DUPTABLE                         R6 K23 [{"title", "side", "LayoutOrder"}]
       60 LOADK                            R9 K24 ["Common"]
       61 LOADK                            R10 K25 ["AnimationEditor"]
       62 LOADK                            R11 K26 ["Toolbar"]
       63 LOADK                            R12 K27 ["StepBackTooltip"]
       64 NAMECALL                         R7 R1 K28 ["getExternalText"]
       66 CALL                             R7 5 1
       67 SETTABLEKS                       R7 R6 K20 ["title"]
       69 GETUPVAL                         R7 4
       70 GETTABLEKS                       R7 R7 K13 ["Enums"]
       72 GETTABLEKS                       R7 R7 K29 ["PopoverSide"]
       74 GETTABLEKS                       R7 R7 K30 ["Bottom"]
       76 SETTABLEKS                       R7 R6 K21 ["side"]
       78 GETTABLEKS                       R7 R0 K22 ["LayoutOrder"]
       80 SETTABLEKS                       R7 R6 K22 ["LayoutOrder"]
       82 MOVE                             R7 R3
       83 CALL                             R4 3 -1
       84 RETURN                           R4 -1
       85 RETURN                           R3 1

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
       42 DUPCLOSURE                       R6 K14 [PROTO_0]
       43 CAPTURE                          VAL R5
       44 CAPTURE                          VAL R2
       45 CAPTURE                          VAL R4
       46 CAPTURE                          VAL R3
       47 CAPTURE                          VAL R1
       48 RETURN                           R6 1
