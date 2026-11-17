PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["ContextServices"]
        3 GETTABLEKS                       R1 R1 K1 ["Localization"]
        5 NAMECALL                         R1 R1 K2 ["use"]
        7 CALL                             R1 1 1
        8 GETUPVAL                         R2 1
        9 GETTABLEKS                       R2 R2 K3 ["useContext"]
       11 GETUPVAL                         R3 2
       12 GETTABLEKS                       R3 R3 K4 ["Context"]
       14 CALL                             R2 1 1
       15 GETUPVAL                         R3 3
       16 NEWTABLE                         R4 0 0
       18 CALL                             R3 1 1
       19 GETUPVAL                         R4 1
       20 GETTABLEKS                       R4 R4 K5 ["createElement"]
       22 GETUPVAL                         R5 4
       23 GETTABLEKS                       R5 R5 K6 ["IconButton"]
       25 DUPTABLE                         R6 K13 [{["icon"], ["size"], ["onActivated"], ["isDisabled"], ["testId"] = "StepForwardButton"}]
       26 GETUPVAL                         R7 4
       27 GETTABLEKS                       R7 R7 K14 ["Enums"]
       29 GETTABLEKS                       R7 R7 K15 ["IconName"]
       31 GETTABLEKS                       R7 R7 K16 ["SkipEndSmall"]
       33 SETTABLEKS                       R7 R6 K7 ["icon"]
       35 GETUPVAL                         R7 4
       36 GETTABLEKS                       R7 R7 K14 ["Enums"]
       38 GETTABLEKS                       R7 R7 K17 ["IconSize"]
       40 GETTABLEKS                       R7 R7 K18 ["XSmall"]
       42 SETTABLEKS                       R7 R6 K8 ["size"]
       44 GETTABLEKS                       R7 R2 K19 ["stepForwardAsync"]
       46 SETTABLEKS                       R7 R6 K9 ["onActivated"]
       48 SETTABLEKS                       R3 R6 K10 ["isDisabled"]
       50 CALL                             R4 2 1
       51 GETUPVAL                         R5 1
       52 GETTABLEKS                       R5 R5 K5 ["createElement"]
       54 GETUPVAL                         R6 4
       55 GETTABLEKS                       R6 R6 K20 ["Tooltip"]
       57 DUPTABLE                         R7 K24 [{"title", "side", "LayoutOrder"}]
       58 LOADK                            R10 K25 ["Common"]
       59 LOADK                            R11 K26 ["AnimationEditor"]
       60 LOADK                            R12 K27 ["Toolbar"]
       61 LOADK                            R13 K28 ["StepForwardTooltip"]
       62 NAMECALL                         R8 R1 K29 ["getExternalText"]
       64 CALL                             R8 5 1
       65 SETTABLEKS                       R8 R7 K21 ["title"]
       67 GETUPVAL                         R8 4
       68 GETTABLEKS                       R8 R8 K14 ["Enums"]
       70 GETTABLEKS                       R8 R8 K30 ["PopoverSide"]
       72 GETTABLEKS                       R8 R8 K31 ["Bottom"]
       74 SETTABLEKS                       R8 R7 K22 ["side"]
       76 GETTABLEKS                       R8 R0 K23 ["LayoutOrder"]
       78 SETTABLEKS                       R8 R7 K23 ["LayoutOrder"]
       80 MOVE                             R8 R4
       81 CALL                             R5 3 -1
       82 RETURN                           R5 -1

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
       37 GETTABLEKS                       R6 R0 K12 ["Components"]
       39 GETTABLEKS                       R6 R6 K13 ["Toolbar"]
       41 GETTABLEKS                       R6 R6 K14 ["useIsPlayControlsDisabled"]
       43 CALL                             R5 1 1
       44 DUPCLOSURE                       R6 K15 [PROTO_0]
       45 CAPTURE                          VAL R2
       46 CAPTURE                          VAL R4
       47 CAPTURE                          VAL R3
       48 CAPTURE                          VAL R5
       49 CAPTURE                          VAL R1
       50 RETURN                           R6 1
