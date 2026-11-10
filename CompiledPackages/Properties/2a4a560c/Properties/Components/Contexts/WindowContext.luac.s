PROTO_0:
        0 DUPTABLE                         R0 K1 [{"createWindowAsync"}]
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R1 R1 K0 ["createWindowAsync"]
        4 SETTABLEKS                       R1 R0 K0 ["createWindowAsync"]
        6 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useMemo"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          VAL R0
        5 NEWTABLE                         R3 0 1
        7 GETTABLEKS                       R4 R0 K1 ["createWindowAsync"]
        9 SETLIST                          R3 R4 1 [1]
       11 CALL                             R1 2 1
       12 GETUPVAL                         R2 1
       13 GETUPVAL                         R3 2
       14 GETTABLEKS                       R3 R3 K2 ["Provider"]
       16 DUPTABLE                         R4 K4 [{"value"}]
       17 SETTABLEKS                       R1 R4 K3 ["value"]
       19 GETTABLEKS                       R5 R0 K5 ["children"]
       21 CALL                             R2 3 -1
       22 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Properties"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["PropertyEditorTypes"]
       11 CALL                             R1 1 1
       12 GETIMPORT                        R2 K5 [require]
       14 GETTABLEKS                       R3 R0 K7 ["PropertyTypes"]
       16 CALL                             R2 1 1
       17 GETIMPORT                        R3 K5 [require]
       19 GETTABLEKS                       R4 R0 K8 ["Parent"]
       21 GETTABLEKS                       R4 R4 K9 ["React"]
       23 CALL                             R3 1 1
       24 GETIMPORT                        R4 K5 [require]
       26 GETTABLEKS                       R5 R0 K8 ["Parent"]
       28 GETTABLEKS                       R5 R5 K10 ["ReactUtils"]
       30 CALL                             R4 1 1
       31 GETTABLEKS                       R5 R4 K11 ["createUnimplemented"]
       33 GETTABLEKS                       R6 R3 K12 ["createElement"]
       35 GETTABLEKS                       R7 R3 K13 ["createContext"]
       37 DUPTABLE                         R8 K15 [{"createWindowAsync"}]
       38 MOVE                             R9 R5
       39 LOADK                            R10 K14 ["createWindowAsync"]
       40 CALL                             R9 1 1
       41 SETTABLEKS                       R9 R8 K14 ["createWindowAsync"]
       43 CALL                             R7 1 1
       44 LOADK                            R8 K16 ["WindowContext"]
       45 SETTABLEKS                       R8 R7 K17 ["displayName"]
       47 DUPCLOSURE                       R8 K18 [PROTO_1]
       48 CAPTURE                          VAL R3
       49 CAPTURE                          VAL R6
       50 CAPTURE                          VAL R7
       51 DUPTABLE                         R9 K21 [{"Context", "Provider"}]
       52 SETTABLEKS                       R7 R9 K19 ["Context"]
       54 SETTABLEKS                       R8 R9 K20 ["Provider"]
       56 RETURN                           R9 1
