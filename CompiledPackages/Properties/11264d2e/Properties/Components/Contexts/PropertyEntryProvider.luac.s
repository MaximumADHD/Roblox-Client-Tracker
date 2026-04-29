PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 GETTABLEKS                       R2 R3 K0 ["Provider"]
        4 DUPTABLE                         R3 K2 [{"theme"}]
        5 GETTABLEKS                       R4 R0 K1 ["theme"]
        7 SETTABLEKS                       R4 R3 K1 ["theme"]
        9 CALL                             R1 2 1
       10 GETUPVAL                         R2 0
       11 GETUPVAL                         R4 2
       12 GETTABLEKS                       R3 R4 K0 ["Provider"]
       14 NEWTABLE                         R4 0 0
       16 CALL                             R2 2 1
       17 GETTABLEKS                       R4 R0 K3 ["getClassIcon"]
       19 JUMPIFNOT                        R4 ; [+11]
       20 GETUPVAL                         R3 0
       21 GETUPVAL                         R5 3
       22 GETTABLEKS                       R4 R5 K0 ["Provider"]
       24 DUPTABLE                         R5 K4 [{"getClassIcon"}]
       25 GETTABLEKS                       R6 R0 K3 ["getClassIcon"]
       27 SETTABLEKS                       R6 R5 K3 ["getClassIcon"]
       29 CALL                             R3 2 1
       30 JUMP                             ; [+5]
       31 GETUPVAL                         R3 0
       32 GETUPVAL                         R5 4
       33 GETTABLEKS                       R4 R5 K5 ["Fragment"]
       35 CALL                             R3 1 1
       36 GETUPVAL                         R4 0
       37 GETUPVAL                         R6 5
       38 GETTABLEKS                       R5 R6 K6 ["ContextStack"]
       40 DUPTABLE                         R6 K8 [{"providers"}]
       41 NEWTABLE                         R7 0 3
       43 MOVE                             R8 R1
       44 MOVE                             R9 R2
       45 MOVE                             R10 R3
       46 SETLIST                          R7 R8 3 [1]
       48 SETTABLEKS                       R7 R6 K7 ["providers"]
       50 GETTABLEKS                       R7 R0 K9 ["children"]
       52 CALL                             R4 3 -1
       53 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Properties"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R5 R0 K7 ["Components"]
       13 GETTABLEKS                       R4 R5 K8 ["Contexts"]
       15 GETTABLEKS                       R3 R4 K9 ["ClassIconContext"]
       17 CALL                             R2 1 1
       18 GETIMPORT                        R3 K6 [require]
       20 GETTABLEKS                       R4 R1 K10 ["React"]
       22 CALL                             R3 1 1
       23 GETIMPORT                        R4 K6 [require]
       25 GETTABLEKS                       R5 R1 K11 ["ReactUtils"]
       27 CALL                             R4 1 1
       28 GETIMPORT                        R5 K6 [require]
       30 GETTABLEKS                       R8 R0 K7 ["Components"]
       32 GETTABLEKS                       R7 R8 K8 ["Contexts"]
       34 GETTABLEKS                       R6 R7 K12 ["ThemeContext"]
       36 CALL                             R5 1 1
       37 GETIMPORT                        R6 K6 [require]
       39 GETTABLEKS                       R9 R0 K7 ["Components"]
       41 GETTABLEKS                       R8 R9 K8 ["Contexts"]
       43 GETTABLEKS                       R7 R8 K13 ["VisualValuesContext"]
       45 CALL                             R6 1 1
       46 GETTABLEKS                       R7 R3 K14 ["createElement"]
       48 DUPCLOSURE                       R8 K15 [PROTO_0]
       49 CAPTURE                          VAL R7
       50 CAPTURE                          VAL R5
       51 CAPTURE                          VAL R6
       52 CAPTURE                          VAL R2
       53 CAPTURE                          VAL R3
       54 CAPTURE                          VAL R4
       55 RETURN                           R8 1
