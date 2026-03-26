PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 GETTABLEKS                       R2 R3 K0 ["Provider"]
        4 DUPTABLE                         R3 K2 [{"theme"}]
        5 GETTABLEKS                       R4 R0 K1 ["theme"]
        7 SETTABLEKS                       R4 R3 K1 ["theme"]
        9 CALL                             R1 2 1
       10 GETTABLEKS                       R3 R0 K3 ["getClassIcon"]
       12 JUMPIFNOT                        R3 ; [+11]
       13 GETUPVAL                         R2 0
       14 GETUPVAL                         R4 2
       15 GETTABLEKS                       R3 R4 K0 ["Provider"]
       17 DUPTABLE                         R4 K4 [{"getClassIcon"}]
       18 GETTABLEKS                       R5 R0 K3 ["getClassIcon"]
       20 SETTABLEKS                       R5 R4 K3 ["getClassIcon"]
       22 CALL                             R2 2 1
       23 JUMP                             ; [+5]
       24 GETUPVAL                         R2 0
       25 GETUPVAL                         R4 3
       26 GETTABLEKS                       R3 R4 K5 ["Fragment"]
       28 CALL                             R2 1 1
       29 GETUPVAL                         R3 0
       30 GETUPVAL                         R5 4
       31 GETTABLEKS                       R4 R5 K6 ["ContextStack"]
       33 DUPTABLE                         R5 K8 [{"providers"}]
       34 NEWTABLE                         R6 0 2
       36 MOVE                             R7 R1
       37 MOVE                             R8 R2
       38 SETLIST                          R6 R7 2 [1]
       40 SETTABLEKS                       R6 R5 K7 ["providers"]
       42 GETTABLEKS                       R6 R0 K9 ["children"]
       44 CALL                             R3 3 -1
       45 RETURN                           R3 -1

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
       37 GETTABLEKS                       R6 R3 K13 ["createElement"]
       39 DUPCLOSURE                       R7 K14 [PROTO_0]
       40 CAPTURE                          VAL R6
       41 CAPTURE                          VAL R5
       42 CAPTURE                          VAL R2
       43 CAPTURE                          VAL R3
       44 CAPTURE                          VAL R4
       45 RETURN                           R7 1
