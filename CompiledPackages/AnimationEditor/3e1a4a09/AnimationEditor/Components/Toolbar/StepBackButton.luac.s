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
       15 GETUPVAL                         R3 1
       16 GETTABLEKS                       R3 R3 K5 ["createElement"]
       18 GETUPVAL                         R4 3
       19 GETTABLEKS                       R4 R4 K6 ["IconButton"]
       21 DUPTABLE                         R5 K12 [{["icon"], ["size"], ["onActivated"], ["isDisabled"] = True}]
       22 GETUPVAL                         R6 3
       23 GETTABLEKS                       R6 R6 K13 ["Enums"]
       25 GETTABLEKS                       R6 R6 K14 ["IconName"]
       27 GETTABLEKS                       R6 R6 K15 ["SkipStartSmall"]
       29 SETTABLEKS                       R6 R5 K7 ["icon"]
       31 GETUPVAL                         R6 3
       32 GETTABLEKS                       R6 R6 K13 ["Enums"]
       34 GETTABLEKS                       R6 R6 K16 ["IconSize"]
       36 GETTABLEKS                       R6 R6 K17 ["XSmall"]
       38 SETTABLEKS                       R6 R5 K8 ["size"]
       40 GETTABLEKS                       R6 R2 K18 ["stepBackAsync"]
       42 SETTABLEKS                       R6 R5 K9 ["onActivated"]
       44 CALL                             R3 2 1
       45 GETUPVAL                         R4 1
       46 GETTABLEKS                       R4 R4 K5 ["createElement"]
       48 GETUPVAL                         R5 3
       49 GETTABLEKS                       R5 R5 K19 ["Tooltip"]
       51 DUPTABLE                         R6 K23 [{"title", "side", "LayoutOrder"}]
       52 LOADK                            R9 K24 ["Common"]
       53 LOADK                            R10 K25 ["AnimationEditor"]
       54 LOADK                            R11 K26 ["Toolbar"]
       55 LOADK                            R12 K27 ["StepBackTooltip"]
       56 NAMECALL                         R7 R1 K28 ["getExternalText"]
       58 CALL                             R7 5 1
       59 SETTABLEKS                       R7 R6 K20 ["title"]
       61 GETUPVAL                         R7 3
       62 GETTABLEKS                       R7 R7 K13 ["Enums"]
       64 GETTABLEKS                       R7 R7 K29 ["PopoverSide"]
       66 GETTABLEKS                       R7 R7 K30 ["Bottom"]
       68 SETTABLEKS                       R7 R6 K21 ["side"]
       70 GETTABLEKS                       R7 R0 K22 ["LayoutOrder"]
       72 SETTABLEKS                       R7 R6 K22 ["LayoutOrder"]
       74 MOVE                             R7 R3
       75 CALL                             R4 3 -1
       76 RETURN                           R4 -1

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
       35 DUPCLOSURE                       R5 K12 [PROTO_0]
       36 CAPTURE                          VAL R2
       37 CAPTURE                          VAL R4
       38 CAPTURE                          VAL R3
       39 CAPTURE                          VAL R1
       40 RETURN                           R5 1
