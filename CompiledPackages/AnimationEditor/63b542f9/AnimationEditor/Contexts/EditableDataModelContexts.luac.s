PROTO_0:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 0
        2 GETUPVAL                         R1 1
        3 GETTABLEKS                       R1 R1 K0 ["createElement"]
        5 GETUPVAL                         R2 2
        6 GETTABLEKS                       R2 R2 K1 ["ContextStack"]
        8 DUPTABLE                         R3 K3 [{"providers"}]
        9 NEWTABLE                         R4 0 3
       11 GETUPVAL                         R5 1
       12 GETTABLEKS                       R5 R5 K0 ["createElement"]
       14 GETUPVAL                         R6 3
       15 GETTABLEKS                       R6 R6 K4 ["EditableDataModelProvider"]
       17 CALL                             R5 1 1
       18 GETUPVAL                         R6 1
       19 GETTABLEKS                       R6 R6 K0 ["createElement"]
       21 GETUPVAL                         R7 4
       22 GETTABLEKS                       R7 R7 K4 ["EditableDataModelProvider"]
       24 CALL                             R6 1 1
       25 GETTABLEKS                       R8 R0 K5 ["plugin"]
       27 JUMPIFNOT                        R8 ; [+13]
       28 GETUPVAL                         R7 1
       29 GETTABLEKS                       R7 R7 K0 ["createElement"]
       31 GETUPVAL                         R8 5
       32 GETTABLEKS                       R8 R8 K6 ["Provider"]
       34 DUPTABLE                         R9 K7 [{"plugin"}]
       35 GETTABLEKS                       R10 R0 K5 ["plugin"]
       37 SETTABLEKS                       R10 R9 K5 ["plugin"]
       39 CALL                             R7 2 1
       40 JUMP                             ; [+7]
       41 GETUPVAL                         R7 1
       42 GETTABLEKS                       R7 R7 K0 ["createElement"]
       44 GETUPVAL                         R8 1
       45 GETTABLEKS                       R8 R8 K8 ["Fragment"]
       47 CALL                             R7 1 1
       48 SETLIST                          R4 R5 3 [1]
       50 SETTABLEKS                       R4 R3 K2 ["providers"]
       52 GETTABLEKS                       R4 R0 K9 ["children"]
       54 CALL                             R1 3 -1
       55 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Contexts"]
       11 GETTABLEKS                       R2 R2 K7 ["DebugUiContext"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Contexts"]
       18 GETTABLEKS                       R3 R3 K8 ["NodesSelectedContext"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Contexts"]
       25 GETTABLEKS                       R4 R4 K9 ["PasteHookContext"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K10 ["Parent"]
       32 GETTABLEKS                       R5 R5 K11 ["React"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R6 R0 K10 ["Parent"]
       39 GETTABLEKS                       R6 R6 K12 ["ReactUtils"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K5 [require]
       44 GETTABLEKS                       R7 R0 K13 ["Hooks"]
       46 GETTABLEKS                       R7 R7 K14 ["useVisibleAnalytics"]
       48 CALL                             R6 1 1
       49 DUPCLOSURE                       R7 K15 [PROTO_0]
       50 CAPTURE                          VAL R6
       51 CAPTURE                          VAL R4
       52 CAPTURE                          VAL R5
       53 CAPTURE                          VAL R1
       54 CAPTURE                          VAL R2
       55 CAPTURE                          VAL R3
       56 RETURN                           R7 1
