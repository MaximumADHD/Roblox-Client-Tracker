PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["ContextStack"]
        6 DUPTABLE                         R3 K3 [{"providers"}]
        7 NEWTABLE                         R4 0 7
        9 GETUPVAL                         R6 2
       10 CALL                             R6 0 1
       11 JUMPIFNOT                        R6 ; [+8]
       12 GETUPVAL                         R5 0
       13 GETTABLEKS                       R5 R5 K0 ["createElement"]
       15 GETUPVAL                         R6 3
       16 GETTABLEKS                       R6 R6 K4 ["EditableDataModelProvider"]
       18 CALL                             R5 1 1
       19 JUMP                             ; [+7]
       20 GETUPVAL                         R5 0
       21 GETTABLEKS                       R5 R5 K0 ["createElement"]
       23 GETUPVAL                         R6 0
       24 GETTABLEKS                       R6 R6 K5 ["Fragment"]
       26 CALL                             R5 1 1
       27 GETUPVAL                         R6 0
       28 GETTABLEKS                       R6 R6 K0 ["createElement"]
       30 GETUPVAL                         R7 4
       31 GETTABLEKS                       R7 R7 K4 ["EditableDataModelProvider"]
       33 CALL                             R6 1 1
       34 GETUPVAL                         R7 0
       35 GETTABLEKS                       R7 R7 K0 ["createElement"]
       37 GETUPVAL                         R8 5
       38 GETTABLEKS                       R8 R8 K6 ["PreviewDataModelProvider"]
       40 CALL                             R7 1 1
       41 GETUPVAL                         R8 0
       42 GETTABLEKS                       R8 R8 K0 ["createElement"]
       44 GETUPVAL                         R9 6
       45 GETTABLEKS                       R9 R9 K6 ["PreviewDataModelProvider"]
       47 CALL                             R8 1 1
       48 GETUPVAL                         R9 0
       49 GETTABLEKS                       R9 R9 K0 ["createElement"]
       51 GETUPVAL                         R10 7
       52 GETTABLEKS                       R10 R10 K4 ["EditableDataModelProvider"]
       54 CALL                             R9 1 1
       55 GETUPVAL                         R10 0
       56 GETTABLEKS                       R10 R10 K0 ["createElement"]
       58 GETUPVAL                         R11 8
       59 GETTABLEKS                       R11 R11 K6 ["PreviewDataModelProvider"]
       61 CALL                             R10 1 1
       62 GETUPVAL                         R11 0
       63 GETTABLEKS                       R11 R11 K0 ["createElement"]
       65 GETUPVAL                         R12 9
       66 GETTABLEKS                       R12 R12 K4 ["EditableDataModelProvider"]
       68 CALL                             R11 1 -1
       69 SETLIST                          R4 R5 -1 [1]
       71 SETTABLEKS                       R4 R3 K2 ["providers"]
       73 GETTABLEKS                       R4 R0 K7 ["children"]
       75 CALL                             R1 3 -1
       76 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Contexts"]
       11 GETTABLEKS                       R2 R2 K7 ["GraphDebugDataContext"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Contexts"]
       18 GETTABLEKS                       R3 R3 K8 ["GraphDropdownContext"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Contexts"]
       25 GETTABLEKS                       R4 R4 K9 ["GraphPlayedContext"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K6 ["Contexts"]
       32 GETTABLEKS                       R5 R5 K10 ["LastOpenedGraphContext"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R6 R0 K6 ["Contexts"]
       39 GETTABLEKS                       R6 R6 K11 ["NativeGraphContext"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K5 [require]
       44 GETTABLEKS                       R7 R0 K12 ["Parent"]
       46 GETTABLEKS                       R7 R7 K13 ["React"]
       48 CALL                             R6 1 1
       49 GETIMPORT                        R7 K5 [require]
       51 GETTABLEKS                       R8 R0 K12 ["Parent"]
       53 GETTABLEKS                       R8 R8 K14 ["ReactUtils"]
       55 CALL                             R7 1 1
       56 GETIMPORT                        R8 K5 [require]
       58 GETTABLEKS                       R9 R0 K6 ["Contexts"]
       60 GETTABLEKS                       R9 R9 K15 ["RigListContext"]
       62 CALL                             R8 1 1
       63 GETIMPORT                        R9 K5 [require]
       65 GETTABLEKS                       R10 R0 K6 ["Contexts"]
       67 GETTABLEKS                       R10 R10 K16 ["SelectedGraphContext"]
       69 CALL                             R9 1 1
       70 GETIMPORT                        R10 K5 [require]
       72 GETTABLEKS                       R11 R0 K17 ["Flags"]
       74 GETTABLEKS                       R11 R11 K18 ["getFFlagAnimGraphUIReopenLastGraph"]
       76 CALL                             R10 1 1
       77 DUPCLOSURE                       R11 K19 [PROTO_0]
       78 CAPTURE                          VAL R6
       79 CAPTURE                          VAL R7
       80 CAPTURE                          VAL R10
       81 CAPTURE                          VAL R4
       82 CAPTURE                          VAL R9
       83 CAPTURE                          VAL R1
       84 CAPTURE                          VAL R3
       85 CAPTURE                          VAL R8
       86 CAPTURE                          VAL R5
       87 CAPTURE                          VAL R2
       88 RETURN                           R11 1
